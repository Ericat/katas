def number_to_roman_numeral(n)
  n = {10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'}

arabic = 8
roman = ''
n.each_pair do |key, value|
  times, remainder = arabic.divmod key
  puts "#{arabic} fits into #{key} #{times} times with #{remainder}"
    # 8 fits into 10 0 times with 8
    # 8 fits into 9 0 times with 8
    # 8 fits into 5 1 times with 3
    # 8 fits into 4 2 times with 0
    # 8 fits into 1 8 times with 0
    arabic = remainder if times > 0
    roman << value * times
  end
end