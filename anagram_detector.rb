# Implement this in such a way that when called below, detect_anagram will result in true or false.

#require 'rspec'

def canonical(word)
  word.downcase.chars.sort.join
end

def detect_anagram(word1, word2)
  canonical(word1) == canonical(word2)
end

#RSpec.describe 'canonical' do
#  it 'returns a hash containing the correct count of characters in a word' do
#    expect(canonical 'sally').to eq({'s' => 1, 'a' => 1, 'l' => 2, 'y' => 1})
#  end
#end

#Rspec.describe 'detect_anagram' do
#  it 'outputs true if two words are anagrams (case-insensitive)' do
#    expect(detect_anagram('BeeWizard', 'WideZebra')).to be true
#  end
#  
#  it 'outputs false if two words are not anagrams' do
#    expect(detect_anagram('CoverMyMeds', 'CoverMyLEDs')).to be false
#  end
#end

p detect_anagram('wizard', 'wizarp') == false

p "Do NOT change any code below this line"
p detect_anagram('angel', 'glean') == true
p detect_anagram('glean', 'angel') == true
p detect_anagram('pants', 'pants') == true
p detect_anagram('CinEmA', 'iceman') == true
p detect_anagram('defgh8', 'g8hefd') == true

