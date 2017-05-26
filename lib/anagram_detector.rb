# Implement this in such a way that when called below, detect_anagram will result in true or false.
class AnagramDetector
  def canonical(word)
    # Implement canonical here
  end

  def detect_anagram(word1, word2)
    canonical(word1) == canonical(word2)
  end
end
