require_relative '../row'

describe Row do
  let(:prime_numbers) {[2, 3, 5, 7, 11, 13, 17, 19, 23, 29]}
  let(:row) { Row.new(2, prime_numbers)}

  describe '#new' do
    it 'has a base number' do
      row.base_number.should == 2
    end
    it 'has prime numbers' do
      row.prime_numbers.should == prime_numbers
    end
  end

  it 'returns prime numbers multiplied by the base number' do
    row.multiplied_values.first.should == 4
    row.multiplied_values[6].should == 34
    row.multiplied_values.last.should == 58
  end

end