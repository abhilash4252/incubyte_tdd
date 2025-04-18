require 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end
  
    it 'returns the number itself for a single number string' do
      expect(StringCalculator.add("5")).to eq(5)
    end

    it 'returns the sum of two comma-separated numbers' do
      expect(StringCalculator.add("1,2")).to eq(3)
    end

    it 'handles newlines as delimiters in addition to commas' do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
        expect(StringCalculator.add("4\n5\n6")).to eq(15)
    end
  end
end