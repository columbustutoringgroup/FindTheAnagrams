# Implement this in such a way that when called below, detect_anagram will result in true or false.

# Canonical function
# sorts string into an array of characters in alphabetical order, makes them lowercase, and rejoins them back into an array
# if two words are anagrams of one another, the canonical function should result in the same word 

def canonical(word)
  word.chars.sort.join.downcase
end

def detect_anagram(word1, word2)
  canonical(word1) == canonical(word2)
end

p "Do NOT change any code below this line"
p detect_anagram('angel', 'glean') == true
p detect_anagram('glean', 'angel') == true
p detect_anagram('pants', 'pants') == true
p detect_anagram('CinEmA', 'iceman') == true
p detect_anagram('defgh8', 'g8hefd') == true
