require 'prime'

#initialize new array of prime numbers
primes = Prime.each.to_enum

#initialize new hash to map character to a prime number
@alphabet = {}

#each ascii character is assigned a unique prime number
(0..255).each { |asciiNumber| @alphabet[asciiNumber.chr] = primes.next}

# Implement this in such a way that when called below, detect_anagram will result in true or false.
def canonical(word)
  #set the case for the word to lowercase
  word.downcase!

  #initialize the variable product
  product = 1

  for i in 0..(word.length - 1)
    #for each character, convert to its unique prime and multiply it to the
    #product
    product *= @alphabet[word[i]]
  end

  #Return unique product for given characters in the word
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
