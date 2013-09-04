class Fixnum
  def prime?
    return false if self == 1
    (2..Math.sqrt(self).to_i).each {|num| return false if self % num == 0}
    true
  end
end

class PrimeNumbersGrid

  attr_reader :prime_numbers

  include Enumerable

  def initialize(size)
    @row_size = size
    @prime_numbers = []
    populate_prime_numbers
  end

  def rows
    @rows ||= prime_numbers.map { |number| Row.new number, prime_numbers }
  end

  def each(&block)
    return block.call([]) if prime_numbers.empty?

    prime_numbers.each do |number|
       block.call Row.new(number, prime_numbers).multiplied_values
    end
  end

  def print
    self.each do |row|
      Printer.draw row
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
