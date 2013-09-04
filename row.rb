require_relative 'printer'

class Row

  attr_reader :base_number, :prime_numbers

  def initialize(base_number, prime_numbers)
    @base_number, @prime_numbers = base_number, prime_numbers
  end

  def multiples
    @multiples ||= prime_numbers.map {|num| num * base_number }
  end

  def to_s
    Printer.draw self.multiples
  end
end