# frozen_string_literal: true

# IMPLEMENTATION FLOW:
# - When `calculatePrice` is called, the API makes a request to **Coindesk's API** to retrieve the current price of Bitcoin in USD.
#   (See ./app/graphql/types/query_type.rb; 'calculate_price' method)

# - If the `type` is `sell`, then the API **subtracts** the computed value of the `margin` percentage from the current Bitcoin price it just retrieved.

# - If the `type` is `buy`, then the API should **adds** the computed value of the `margin` percentage to the current Bitcoin price it just retrieved.

# - Finally, the **number** `calculatePrice` responds will be in NGN. This is calculated using the `exchangeRate` argument.

class ExchangeCalculator
  def self.compute(bitcoin_price, type, computed_margin, exchange_rate)
    case type.downcase
    when 'sell'
      bitcoin_value = bitcoin_price - computed_margin
    when 'buy'
      bitcoin_value = bitcoin_price + computed_margin
    else
      raise ArgumentError, "Missing parameter: 'type' argument is not given"
    end
    (exchange_rate * bitcoin_value).round(4)
  end
end
