require_relative 'printer'

class Row

  attr_reader :base_number, :prime_numbers

  def initialize(base_number, prime_numbers)
    @base_number, @prime_numbers = base_number, prime_numbers
  end

  def multiplied_values
    @multiplied_values ||= prime_numbers.map {|num| num * base_number }
  end
end