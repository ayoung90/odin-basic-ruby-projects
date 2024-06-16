def substrings(word, dictionary)
  # lowercase both as word and dictionary can have mixed cases
  word.downcase!
  dictionary.map!(&:downcase)

  dictionary.each_with_object(Hash.new(0)) { |item, counts| counts[item] += 1 if word.include?(item) }
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

# should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found
puts substrings('below', dictionary)

# Next, make sure your method can handle multiple words
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
