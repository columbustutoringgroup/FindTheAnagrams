# VERSION ONE
# Implement your solution below

def detect_anagram(word1, word2)

  check1 = canonical(word1) == canonical(word2)

  #Insert your solution below here.


  word1s = word1.upcase.split("")
  word2s = word2.upcase.split("")
  
  status = word1s.reduce(true){ |status, letter| 
    (((i = word2s.find_index(letter)) && word2s.delete_at(i)) != nil) && status
  }
  check2 = word2s.empty? ? true & status : false

  check2 && check1

end


# VERSION TWO
# Implement this version by uncommenting the line in the function.
# Then move your solution into the canonical function
# Modify it in such a way that when called from detect_anagram it results in true or false


def canonical(word)
 
  #insert your solution here
  word.upcase.split("").map(&:ord).reduce(&:+)
 
end

p "Do NOT change any code below this line"
p detect_anagram('angel', 'glean') == true
p detect_anagram('glean', 'angel') == true
p detect_anagram('pants', 'pants') == true
p detect_anagram('CinEmA', 'iceman') == true
p detect_anagram('defgh8', 'g8hefd') == true

# The previous tests don't account for the following possibilities....
# If a word has duplicate letters and the other doesn't it should fail.
p detect_anagram('defgh8', 'g8hhefd') == false
p detect_anagram('defghh8', 'g8hefd') == false
p detect_anagram('defghh8', 'g8hhefd') == true


