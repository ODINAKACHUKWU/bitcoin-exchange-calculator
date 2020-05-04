# frozen_string_literal: true

module Types
  class TransactionType < Types::BaseEnum
    description 'This is the list of available transaction types'

    value 'BUY', "Specifies that it is a 'buy' transaction"
    value 'SELL', "Specifies that it is a 'sell' transaction"
  end
end
