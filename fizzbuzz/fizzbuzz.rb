class FizzBuzz

    def fizzit!(n)
      return 'FizzBuzz' if is_divisible_by_both?(n)
      return 'Fizz' if is_divisible_by_three?(n)
      return 'Buzz' if is_divisible_by_five?(n)
      return n
    end

    def is_divisible_by_both?(n) 
      n % 5 == 0 && n % 3 == 0
    end

    def is_divisible_by_three?(n)
      n % 3 == 0
    end

    def is_divisible_by_five?(n)
      n % 5 == 0
    end

end
