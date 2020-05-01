# frozen_string_literal: true

class HomeController < ApplicationController
  # Callbacks
  before_action :set_params, only: :index

  # GET /
  def index
    current_price = Bitcoin.current_price(@currency)['rate_float']
    computed_margin = @margin / 100
    @bitcoin_buy_price = bitcoin_exchange_rate_for_buy(current_price, computed_margin).rate
    @bitcoin_sell_price = bitcoin_exchange_rate_for_sell(current_price, computed_margin).rate
  end

  # GET /explorer
  def developer; end

  private

  # Returns bitcoin price for buy transaction
  def bitcoin_exchange_rate_for_buy(current_price, computed_margin)
    bitcoin_exchange_rate = ExchangeCalculator.compute(current_price, 'buy', computed_margin, @exchange_rate)
    BitcoinExchangePrice.fetch(bitcoin_exchange_rate)
  end

  # Returns bitcoin price for sell transaction
  def bitcoin_exchange_rate_for_sell(current_price, computed_margin)
    bitcoin_exchange_rate = ExchangeCalculator.compute(current_price, 'sell', computed_margin, @exchange_rate)
    BitcoinExchangePrice.fetch(bitcoin_exchange_rate)
  end

  # Sets the currency for which bitcoin price would be fetched
  def set_params
    @currency = params[:currency] || 'USD'
    @margin = params[:margin] || 2.5
    @exchange_rate = params[:exchange_rate] || 360
  end
end
