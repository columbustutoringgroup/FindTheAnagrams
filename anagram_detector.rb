# VERSION ONE
# Implement your solution below

def detect_anagram(word1, word2)
  canonical(word1) == canonical(word2)
end


# VERSION TWO
# Implement this version by uncommenting the line in the function.
# Then move your solution into the canonical function
# Modify it in such a way that when called from detect_anagram it results in true or false


def canonical(word)
  word.downcase.chars.sort { |a,b| a <=> b }.join
end

p "Do NOT change any code below this line"
p detect_anagram('angel', 'glean') == true
p detect_anagram('glean', 'angel') == true
p detect_anagram('pants', 'pants') == true
p detect_anagram('CinEmA', 'iceman') == true
p detect_anagram('defgh8', 'g8hefd') == true
