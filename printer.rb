class Printer
  def self.draw(row)
    row.map {|number|  add_buffer number}.join
  end

  def self.add_buffer(number)
    if number.to_s.size < 4
      buffer = Array.new(4 - number.to_s.size, " ").join
      return number.to_s + buffer + "|"
    end
  end
end