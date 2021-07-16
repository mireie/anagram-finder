require ("pry")

class AnagramFinder
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram_finder()
    word1_array = @word1.upcase.split("").sort()
    word2_array = @word2.upcase.split("").sort()
    if word_checker?() === true
      if word1_array === word2_array
        return "These words are anagrams"
      else
        return "These words are not anagrams"
      end
    else
      "You need to input actual words!"
    end
  end

  def word_checker?()
    vowels = "aeiou"
    result = false
    vowels.each_char do |vowel|
      if @word1.include?(vowel) && @word2.include?(vowel)
        result = true
      end
    end
    result
  end
end
