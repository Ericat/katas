def roman_numeral_to_number(numeral)

  roman_numbers = %w[I V X L C D M]
  roman_values = [1, 5, 10, 50, 100, 500, 1000]

  roman_map = Hash[roman_numbers.zip(roman_values)]

  letters = numeral.chars

  sum = 0

  letter_values = letters.map{ |letter| roman_map[letter]}

  letter_values.each_with_index do |value, index|
    next_letter = letter_values[index+1]
    if !next_letter.nil? and value < next_letter
      sum -= value
    else
      sum += value
    end
  end
  sum
end