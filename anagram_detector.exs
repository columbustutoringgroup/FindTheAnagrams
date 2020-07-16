defmodule AnagramDetector do
  def canonical(word) do
    String.downcase(word) |> String.split("") |> Enum.sort(&(&1 < &2))
  end

  def detect_anagram(word1, word2) do
    canonical(word1) == canonical(word2)
  end
end

IO.puts AnagramDetector.detect_anagram("angel", "glean") == true
IO.puts AnagramDetector.detect_anagram("glean", "angel") == true
IO.puts AnagramDetector.detect_anagram("pants", "pants") == true
IO.puts AnagramDetector.detect_anagram("abc", "def") == false
IO.puts AnagramDetector.detect_anagram("CinEma", "iceman") == true
IO.puts AnagramDetector.detect_anagram("888grbm", "gr8b8m8") == true
