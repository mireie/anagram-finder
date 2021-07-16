require ("pry")

class AnagramFinder
  def initialize(input1, input2)
    @input1 = input1
    @input2 = input2
  end

  def anagram_finder()
    input1_array = @input1.upcase.split("").sort()
    input2_array = @input2.upcase.split("").sort()
    if word_checker?() === true
      if input1_array === input2_array
        return "These are anagrams!"
      else
        if antigram_finder?() === true
          return "These are antigrams!"
        else
          return "These are not anagrams!"
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
      if @input1.include?(vowel)
        result1 = true
      end
      if @input2.include?(vowel)
        result2 = true
      end
    end
    if result1 === true && result2 === true
      true
    end
  end

  def antigram_finder?()
    result = true
    @input1.each_char do |char|
      if @input1.include?(@input2)
        result = false
      end
    end
    result
  end
  def sanitizer()

  end
end
