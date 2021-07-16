require ("pry")

class AnagramFinder
  def initialize(input1, input2)
    @input1 = input1
    @input2 = input2
  end

  def anagram_finder()
    if word_checker?() === true
      input1_s = sanitizer(@input1)
      input2_s = sanitizer(@input2)
      if input1_s.chars.sort() === input2_s.chars.sort()
        return "These are anagrams!"
      else
        if antigram_finder?() === true
          return "These are antigrams!"
        else
          matcher()
        end
      end
    else
      "You need to input actual words!"
    end
  end

  def word_checker?()
    vowels = "AEIOU"
    input1_word_array = @input1.upcase.split(" ")
    input2_word_array = @input2.upcase.split(" ")
    result1 = true
    result2 = true
    input1_word_array.each do |word|
      word_has_vowel = false
      vowels.each_char do |vowel|
        if word.include?(vowel) === true
          word_has_vowel = true
        end
      end
      if word_has_vowel === false
        result1 = false
      end
    end
    input2_word_array.each do |word|
      word_has_vowel = false
      vowels.each_char do |vowel|
        if word.include?(vowel) === true
          word_has_vowel = true
        end
      end
      if word_has_vowel === false
        result1 = false
      end
    end
    if result1 === true && result2 === true
      true
    else
      false
    end
  end

  def antigram_finder?()
    result = true
    sanitizer(@input1).each_char do |char|
      if sanitizer(@input2).include?(char)
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
  def matcher()
    output_array = []
    sanitizer(@input1).each_char do |char|
      if sanitizer(@input2).include?(char)
        output_array.push(char)
      end
    end
    "These are not anagrams but these letters match: #{output_array.join(", ")}"
  end
end
