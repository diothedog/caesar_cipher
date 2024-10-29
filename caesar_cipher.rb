def caesar_cipher(string, shift_factor)
  char_arr = string.split("")
  ascii_arr = char_arr.map { |char| char.ord }
  shifted_arr = ascii_arr.map do |char|
    # lower case letters
    if char >= 97 && char <= 122
      if char + shift_factor <= 122 && char + shift_factor >= 97
        char += shift_factor
      elsif char + shift_factor > 122
        char += shift_factor - 26
      else
        char += shift_factor + 26
      end
    # upper case letters
    elsif char >= 65 && char <= 90
      if char + shift_factor >= 65 && char + shift_factor <= 90
        char += shift_factor
      elsif char + shift_factor > 90
        char += shift_factor - 26
      else
        char += shift_factor + 26
      end
    # non alphabetic characters
    else
      char = char
    end
  end
  converted_arr = shifted_arr.map { |char| char.chr }
  puts converted_arr.join("")
end

caesar_cipher("What a string!", 5)