class Fixnum
  def prime?
    return false if self == 1
    (2...self).each {|num| return false if self % num == 0}
    true
  end
end
class PrimeNumbersGrid

  attr_reader :base_row

  def initialize(size)
    @row_size = size
    @base_row = []
    populate_base_row
  end

  def rows
    @rows ||= base_row.map { |number| Row.new number, base_row }
  end

  def print
    rows.each do |row|
      Printer.draw row.multiples
    end
  end

  private

  def populate_base_row
    number = 2
    while base_row.size < @row_size
       if number.prime?
        base_row << number
      end
      number += 1
    end
    base_row
  end
end
