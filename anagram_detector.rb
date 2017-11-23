# Implement this in such a way that when called below, detect_anagram will result in true or false.
def canonical(word)
  # Downcase makes string lower case
  standard_word = word.downcase
  # str.chars -> ["s", "t", "r"] makes enumeration of string (from docs)
  # str.chars.sort -> ["r", "s", "t"] alpha order, if numbers are involved, numbers go first and are in ascending order.
  # str.chars.sort.join -> "rst" enumeration back to string
  standard_word = standard_word.chars.sort.join
  return standard_word
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
