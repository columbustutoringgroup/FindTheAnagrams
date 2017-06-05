# Implement this in such a way that when called below, detect_anagram will result in true or false.
def canonical(word)
  # Alternatively: word.downcase.chars.sort
  # for a one-liner

  # Create hash with default key values of 0
  result = Hash.new(0)

  # Build a frequency distribution by character
  # If two words have the same character frequency distribution, they are anagrams
  word.downcase.each_char { |char| result[char] += 1 }
  result
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


