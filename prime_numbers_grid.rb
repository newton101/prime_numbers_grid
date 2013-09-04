class Fixnum
  def prime?
    return false if self == 1
    (2..Math.sqrt(self).to_i).each {|num| return false if self % num == 0}
    true
  end
end

class PrimeNumbersGrid

  attr_reader :prime_numbers

  def initialize(size)
    @row_size = size
    @prime_numbers = []
    populate_prime_numbers
  end

  def rows
    @rows ||= prime_numbers.map { |number| Row.new number, prime_numbers }
  end

  def print
    rows.each do |row|
      Printer.draw row.multiples
    end
  end

  private

  def populate_prime_numbers
    number = 2
    until row_fully_populated
        prime_numbers << number if number.prime?
      number += 1
    end
    prime_numbers
  end

  def row_fully_populated
    prime_numbers.size >= @row_size
  end
end
