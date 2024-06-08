$cipher = Array('a'..'z')
$shift = 5

def encode_cipher(input)
  encoded_array = input.split('').map do |char|
    $cipher[$cipher.index(char) + $shift]
  end
  encoded_array.join
end

while (user_input = gets.chomp.downcase)
  break if user_input == 'exit'

  puts encode_cipher(user_input)

end
