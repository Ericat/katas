def ordered?(word)
  alphabet = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

  alphabet_map = Hash.new{0}

  alphabet.each_with_index do |value, index|
    alphabet_map[value.downcase] = index
  end

  letters = word.downcase.chars

  letter_values = letters.map{ |letter| alphabet_map[letter]}

  letter_values == letter_values.sort ? true : false

end
