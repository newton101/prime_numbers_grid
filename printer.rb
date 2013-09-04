class Printer
  def self.draw(row)
    row.map {|element|  add_buffer(element, 4) }.join
  end

  def self.add_buffer(element, buffer_size)
    strsize = element.to_s.size
    if needs_alignment? element, buffer_size
      buffer = Array.new(buffer_size - element.to_s.size, " ").join
      return element.to_s + buffer + "|"
    end
  end

private

  def self.needs_alignment?(element, buffer_size)
    element.to_s.size < buffer_size
  end
end