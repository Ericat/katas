require_relative 'fizzbuzz'

describe "FizzBuzz" do
  context 'tells us that' do

    it "number is divisible by 3" do
      expect(FizzBuzz.is_divisible_by_three?(3)).to be_true
      expect(FizzBuzz.is_divisible_by_three?(15)).to be_true
    end

    it "number is divisible by 5" do
      expect(FizzBuzz.is_divisible_by_five?(5)).to be_true
    end

    it "number is not divisible by 3" do
      expect(FizzBuzz.is_divisible_by_three?(2)).to be_false
    end

    it "number is not divisible by 5" do
      expect(FizzBuzz.is_divisible_by_five?(2)).to be_false
    end

    it "number should be divisible by 3 and 5" do
      expect(FizzBuzz.is_divisible_by_both?(15)).to be_true
    end

    it "it should return 'Fizz' if number is divisible by thee" do
      expect(FizzBuzz.fizzit!(3)).to eq('Fizz')
    end

    it "should not return 'Fizz' if number is not divisible by three" do
      expect(FizzBuzz.fizzit!(2)).not_to eq('Fizz')
    end

    it "should return 'Buzz' if number is divisible by 5" do
      expect(FizzBuzz.fizzit!(5)).to eq('Buzz')
    end

    it "should not return 'Buzz' if the number is not divisible by 5" do
      expect(FizzBuzz.fizzit!(7)).not_to eq('Buzz')
    end

    it "should return 'FizzBuzz' if number is divisible by both 3 and 5" do
      expect(FizzBuzz.fizzit!(90)).to eq('FizzBuzz')
    end

    it "should return its value if number is not divisible by either" do
      expect(FizzBuzz.fizzit!(8)).to eq(8)
    end

  end
end