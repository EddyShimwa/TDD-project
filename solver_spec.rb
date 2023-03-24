# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength
RSpec.describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    context 'when given a positive number' do
      it 'returns the factorial of that number' do
        expect(solver.factorial(5)).to eq(120)
        expect(solver.factorial(0)).to eq(1)
      end
    end

    context 'when given a negative number' do
      it 'raises an ArgumentError' do
        expect { solver.factorial(-1) }.to raise_error(ArgumentError, 'Input should not be a negative number!')
      end
    end
  end

  describe '#reverse' do
    context 'when given a string' do
      it 'reverses the string' do
        expect(solver.reverse('hello')).to eq('olleh')
        expect(solver.reverse('microverse')).to eq('esrevorcim')
      end
    end
  end

  describe '#fizzbuzz' do
    context 'when given a number that is divisible by 3 and 5' do
      it 'returns "fizzbuzz"' do
        expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      end
    end

    context 'when given a number that is divisible by 3 but not 5' do
      it 'returns "fizz"' do
        expect(solver.fizzbuzz(3)).to eq('fizz')
        expect(solver.fizzbuzz(18)).to eq('fizz')
      end
    end

    context 'when given a number that is divisible by 5 but not 3' do
      it 'returns "buzz"' do
        expect(solver.fizzbuzz(5)).to eq('buzz')
        expect(solver.fizzbuzz(10)).to eq('buzz')
      end
    end

    context 'when given a number that is not divisible by 3 or 5' do
      it 'returns the number as a string' do
        expect(solver.fizzbuzz(2)).to eq('2')
        expect(solver.fizzbuzz(13)).to eq('13')
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
