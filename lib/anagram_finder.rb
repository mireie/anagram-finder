require ("pry")

class AnagramFinder
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram_finder()
    word1_array = @word1.split("").sort()
    word2_array = @word2.split("").sort()
    if word1_array === word2_array 
      return 'These words are anagrams'
    else 
      return 'These words are not anagrams'
    end
  end
end
