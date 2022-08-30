class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_client[:api_key],
                                  endpoint: 'https://cloud.iexapis.com/v1')
    result = client.quote(ticker_symbol)
    result.to_h['iex_realtime_price']
  end
end
