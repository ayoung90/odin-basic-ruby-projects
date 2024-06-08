$cipher = Array('a'..'z')
$shift = 5

def init_shift_amount(number)
  default = $shift

  if number.integer? &&
     (number >= 1 && number <= 5)
    $shift = number
  else
    puts "Warning: number not entered. Has been kept at #{default}"
  end
end

def encode_cipher(input)
  encoded_array = input.split('').map do |char|
    if $cipher.include?(char)
      $cipher[$cipher.index(char) + $shift]
    else
      char
    end
  end
  encoded_array.join
end

# TODO: u. Find out how to do this properly
return if $test_mode

puts '#### Welcome to Ceaser Cipher (use !exit to quit) ####'
print 'Enter shift: '
init_shift_amount(gets.chomp.to_i)

input_message = 'Please enter text for encoding: '
print input_message

while (user_input = gets.chomp.downcase)
  break if user_input == '!exit'

  puts encode_cipher(user_input)
  print input_message
end
