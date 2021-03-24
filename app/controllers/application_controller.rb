class ApplicationController < ActionController::Base
  def index; end

  def generate_hmac_hash(query_string)
    OpenSSL::HMAC.hexdigest(
      OpenSSL::Digest.new('sha256'),
      user_secret_key,
      query_string
    )
  end

  def get_server_timestamp
    url = "#{api_url}/api/v3/time"
    response = HTTParty.get(url)
    response['serverTime']
  end

  def api_url
    'https://api.binance.com'
  end

  def api_key
    ''
  end

  def user_secret_key
    ''
  end
end
