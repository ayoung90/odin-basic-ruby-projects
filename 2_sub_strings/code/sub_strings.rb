def substrings(word, dictionary)
  dictionary.each_with_object(Hash.new(0)) { |item, counts| counts[item] += 1 if word.include?(item) }
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

puts substrings('below', dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
