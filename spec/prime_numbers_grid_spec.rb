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
      it 'creates a row for each prime number' do
        grid.rows.first.base_number.should == 2
        grid.rows[6].base_number.should == 17
        grid.rows.last.base_number.should == 29
      end
    end
  end
end