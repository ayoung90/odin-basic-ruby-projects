require './ceaser_cipher'

puts '#### Welcome to Ceaser Cipher (use !exit to quit) ####'
print 'Enter shift: '
shift_amount = gets.chomp.to_i

input_message = 'Please enter text for encoding: '
print input_message

while (user_input = gets.chomp)
  break if user_input == '!exit'

  puts ceaser_cipher(user_input, shift_amount)
  print input_message
end
