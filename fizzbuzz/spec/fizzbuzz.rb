class FizzBuzz
  def self.fizzit!(n)
    return 'FizzBuzz' if is_divisible_by_both?(n)
    return 'Fizz' if is_divisible_by_three?(n)
    return 'Buzz' if is_divisible_by_five?(n)
    return n
  end

  def self.is_divisible_by_both?(n)   #undefined method `is_divisible_by_both' for FizzBuzz:Class if you dont put self
    n % 5 == 0 && n % 3 == 0
  end

  def self.is_divisible_by_three?(n)
    n % 3 == 0
  end

  def self.is_divisible_by_five?(n)
    n % 5 == 0
  end
end

# puts FizzBuzz.is_divisible_by_five?(100) 
# undefined method `is_divisible_by_five' for FizzBuzz:Class
