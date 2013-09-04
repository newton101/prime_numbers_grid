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
    context 'given a row size of N' do
      it 'populates first N prime numbers' do
        grid.base_row.first.should == 2
        grid.base_row[6].should == 17
        grid.base_row.last.should == 29
      end
      it 'creates a row for each prime number' do
        grid.rows.first.base_number.should == 2
        grid.rows[6].base_number.should == 17
        grid.rows.last.base_number.should == 29
      end
    end
  end
end