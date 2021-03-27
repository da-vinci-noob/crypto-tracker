class Api::V1::BinanceController < ApplicationController
  def balance
    headers = {
      'X-MBX-APIKEY' => api_key,
      'Content-Type' => 'application/json'
    }
    url_path = 'api/v3/account'
    query_string = "timestamp=#{get_server_timestamp}"
    signature = generate_hmac_hash(query_string)
    @response =
      HTTParty.get(
        "#{api_url}/#{url_path}?#{query_string}&signature=#{signature}",
        headers: headers
      )
    @response['balances'].reject! do |hash|
      hash['free'].to_f.zero? && hash['locked'].to_f.zero?
    end

    @response['balances'].each do |hash|
      symbol =
        if hash['asset'].starts_with?('LD')
          hash['asset'].delete_prefix('LD')
        else
          hash['asset']
        end

      value = hash['free'].to_f + hash['locked'].to_f
      price = value if hash['asset'] == 'USDT'
      price = usdt_price(symbol) if price.nil?

      # Calculate BTC Price and convert to USDT if USDT pair not found
      if price.nil?
        btc_value = btc_price(symbol)
        unless btc_value.nil?
          btc_usdt_price = usdt_price('BTC')
          price = btc_usdt_price.to_f * btc_value.to_f
        end
      end

      # Calculate ETH Price and convert to USDT if USDT and BTC pair not found
      if price.nil?
        eth_value = eth_price(symbol)
        unless eth_value.nil?
          eth_usdt_price = usdt_price('ETH')
          price = eth_usdt_price.to_f * eth_value.to_f
        end
      end

      if price.nil?
        # Assume Coin is unlisted if USDT BTC ETH pair not found
        usdt_price = 'unlisted coin'
      else
        usdt_price = price.to_f * value.to_f
      end
      hash['usdt_price'] = usdt_price
    end
  end

  private

  def usdt_price(symbol)
    url_path = "api/v3/ticker/price?symbol=#{symbol}USDT"
    res = HTTParty.get("#{api_url}/#{url_path}")
    res['price']
  end

  def btc_price(symbol)
    url_path = "api/v3/ticker/price?symbol=#{symbol}BTC"
    res = HTTParty.get("#{api_url}/#{url_path}")
    res['price']
  end

  def eth_price(symbol)
    url_path = "api/v3/ticker/price?symbol=#{symbol}ETH"
    res = HTTParty.get("#{api_url}/#{url_path}")
    res['price']
  end
end
