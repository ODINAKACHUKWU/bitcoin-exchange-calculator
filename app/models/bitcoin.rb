# frozen_string_literal: true

class Bitcoin
  include HTTParty

  base_uri 'https://api.coindesk.com/v1/bpi'

  format :json

  # Fetch current price of bitcoin from CoinDesk API
  def self.current_price(currency = 'USD')
    get("/currentprice/#{currency}.json")['bpi'][currency.to_s]
  end
end
