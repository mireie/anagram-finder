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
        if antigram_finder?() === true
          return "These words are antigrams!"
        else
          return "These words are not anagrams"
        end
      end
    else
      "You need to input actual words!"
    end
  end

  def word_checker?()
    vowels = "aeiou"
    result1 = false
    result2 = false
    vowels.each_char do |vowel|
      if @word1.include?(vowel)
        result1 = true
      end
      if @word2.include?(vowel)
        result2 = true
      end
    end
    if result1 === true && result2 === true
      true
    end
  end

  def antigram_finder?()
    result = true
    @word1.each_char do |char|
      if @word1.include?(@word2)
        result = false
      end
    end
    result
  end
end
