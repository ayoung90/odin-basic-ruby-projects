def ceaser_cipher(string, shift_factor)
  all_letters = Array('a'..'z')
  unless shift_factor.integer?
    puts 'Warning: number not entered.'
    return
  end

  encoded_array = string.split('').map do |char|
    change_case = char.downcase != char
    char = char.downcase

    encoded = if all_letters.include?(char)
                index = all_letters.index(char) + shift_factor
                index -= all_letters.length while index > all_letters.length
                all_letters[index]
              else
                char
              end
    encoded = encoded.upcase if change_case
    encoded
  end
  encoded_array.join
end
