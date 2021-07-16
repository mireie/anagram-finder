require ("pry")

class AnagramFinder
  def initialize(input1, input2)
    @input1 = sanitizer(input1)
    @input2 = sanitizer(input2)
  end

  def anagram_finder()
    if word_checker?() === true
      if @input1.chars.sort() === @input2.chars.sort()
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
    vowels = "AEIOU"
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

  def sanitizer(input)
    input_a = input.upcase.chars
    a_to_z = ("A".."Z")
    input_a.each_with_index do |char, index|
      if !(a_to_z.include?(char))
        input_a.delete_at(index)
      end
    end
    input_a.join("")
  end
end
