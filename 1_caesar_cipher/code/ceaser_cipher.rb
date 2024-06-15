def ceaser_cipher(string, shift_factor)
  all_letters = Array('a'..'z')
  unless shift_factor.integer?
    puts 'Warning: number not entered.'
    return
  end

  encoded_array = string.split('').map do |char|
    if all_letters.include?(char)
      index = all_letters.index(char) + shift_factor
      index -= all_letters.length while index > all_letters.length
      all_letters[index]
    else
      char
    end
  end
  encoded_array.join
end
