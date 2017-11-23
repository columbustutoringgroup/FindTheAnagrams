# Implement this in such a way that when called below, detect_anagram will result in true or false.
def canonical(word)

	# Create array representing ascii values
	ascii_array = Array.new(127, 0)

	# Evaluate each character in the word
	word.split(//).each do |char|

		# Convert upper-case characters to lower case characters
		# since we are disregarding case when considering anagrams
		if (char == char.capitalize) then
			char = char.downcase
		end

		# Increment the array slot corresponding with the ascii value
		# of the character found.
		ascii_array[char.ord] += 1
	end
	
	return ascii_array

end

# If the two words are anagrams, then the 'canonical' method will
# return an identical ascii_array for each. Otherwise, the arrays
# will be different and detect_anagram will return false
def detect_anagram(word1, word2)
  canonical(word1) == canonical(word2)
end

p "Do NOT change any code below this line"
p detect_anagram('angel', 'glean') # == true
p detect_anagram('glean', 'angel') # == true
p detect_anagram('pants', 'pants') # == true
p detect_anagram('CinEmA', 'iceman') # == true
p detect_anagram('defgh8', 'g8hefd') # == true
p detect_anagram('bird', 'house') # == false


