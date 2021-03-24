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
  end
end
