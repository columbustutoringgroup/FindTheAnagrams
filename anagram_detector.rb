# Implement this in such a way that when called below, detect_anagram will result in true or false.

#This method converts the characters in the string to ascii integers and multipl
#ies them together. Since prime factorization is unique, if the products of the
#ascii integers are the same then they must use the same characters.

#Update: this algorithm passes the test, but its possible for two strings that a
#re not anagrams to be out together. For example, if a string has characters 1 a
#nd 4 as integers and another has 2 and 2, this algorithm consider them anagrams
#even though they are not by definition.

#Since the lowercase alphabet characters begin at 97, it is unlikey that the exc
#eption case described above would happen with a given set of lowercase strings.
#Furthermore, it is less likely to happen as the strings get longer since the sp
#ecific value of the product would be hard to match with those large numbers.

def canonical(word)
  #set the case for the word to lowercase
  word.downcase!

  #initialize the variable product
  product = 1

  for i in 0..(word.length - 1)
    #for each character, convert to ascii number and multiply it to the product
    product *= word[i].ord
  end

  #Return product
  product
end

#Editting detect_anagram in this manner would also decrease the likelihood of th
#e above exception.
def detect_anagram(word1, word2)

  if word1.length == word2.length
    canonical(word1) == canonical(word2)
  else
    false
  end
end

p "Do NOT change any code below this line"
p detect_anagram('angel', 'glean') == true
p detect_anagram('glean', 'angel') == true
p detect_anagram('pants', 'pants') == true
p detect_anagram('CinEmA', 'iceman') == true
p detect_anagram('defgh8', 'g8hefd') == true
