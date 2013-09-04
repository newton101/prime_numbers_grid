require_relative '../prime_numbers_grid'

describe PrimeNumbersGrid do
  let(:grid) {PrimeNumbersGrid.new(10)}

  describe '#prime?' do
    context 'given a number' do
      it 'returns true if number is a prime number' do
        13.prime?.should eq true
      end
      it 'returns false if number is not a prime number' do
        14.prime?.should eq false
      end
      it 'returns false if number is 1' do
        1.prime?.should eq false
      end
    end
  end

  describe '#new' do
    context 'given  a row of size "n"' do
      it 'populates first "n" prime numbers' do
        grid.prime_numbers.first.should == 2
        grid.prime_numbers[6].should == 17
        grid.prime_numbers.last.should == 29
      end
    end
  end
  describe '#each' do
    it 'returns multiplied values for first prime number' do
        grid.first.should == [4, 6, 10, 14, 22, 26, 34, 38, 46, 58]
    end
  end
end