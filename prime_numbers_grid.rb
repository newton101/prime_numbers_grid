class Fixnum
  def prime?
    return false if self == 1
    (2...self).each {|num| return false if self % num == 0}
    true
  end
end
class PrimeNumbersGrid

  attr_reader :row

  def initialize(size)
    @row_size = size
    @row = []
    populate_row
  end

  def populate_row
    number = 2
    while row.size < @row_size
       if number.prime?
        row << number
      end
      number += 1
    end
    row
  end
end
