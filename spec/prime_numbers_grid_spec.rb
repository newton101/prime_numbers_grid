require_relative '../prime_numbers_grid'

describe PrimeNumbersGrid do
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
    context 'given a row size of N' do
      it 'returns first N prime numbers' do
        grid = PrimeNumbersGrid.new(10)
        grid.row.first.should == 2
        grid.row.last.should == 29
      end
    end
  end
end