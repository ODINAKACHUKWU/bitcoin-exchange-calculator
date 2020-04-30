# frozen_string_literal: true

module RateComposer
  extend ActiveSupport::Concern

  # Converts a floating point to delimitered string
  def compose_rate(number)
    whole, decimal = number.to_s.split('.')
    whole_with_commas = whole.chars.to_a.reverse.each_slice(3).map(&:join).join(',').reverse
    [whole_with_commas, decimal].compact.join('.')
  end
end
