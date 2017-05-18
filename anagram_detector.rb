def canonical(word)

end

#Editting detect_anagram in this manner would also decrease the likelihood of th
#e above exception.
def detect_anagram(word1, word2)
  canonical(word1) == canonical(word2)
end

p "Do NOT change any code below this line"
p detect_anagram('angel', 'glean') == true
p detect_anagram('glean', 'angel') == true
p detect_anagram('pants', 'pants') == true
p detect_anagram('CinEmA', 'iceman') == true
p detect_anagram('defgh8', 'g8hefd') == true
