class StringCalculator
    def self.add(input)
        return 0 if input.empty?

        if input.start_with?("//")
          delimiter, input = input.match(%r{//(.)\n(.*)})[1..2]
          numbers = input.split(/[\n#{Regexp.escape(delimiter)}]/).map(&:to_i)
        else
          numbers = input.split(/[\n,]/).map(&:to_i)
        end
    
        numbers.sum
    end
end