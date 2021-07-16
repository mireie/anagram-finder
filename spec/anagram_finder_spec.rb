require("rspec")
require("anagram_finder")
require("pry")

describe("#AnagramFinder") do
  it("will compare two words and return whether or not they are anagrams") do
    input = AnagramFinder.new("ruby", "bury")
    expect((input.anagram_finder)).to(eq("These are anagrams!"))
  end
  it("will compare two words and return whether or not they are anagrams regardless of case") do
    input = AnagramFinder.new("Ruby", "Bury")
    expect((input.anagram_finder)).to(eq("These are anagrams!"))
  end
  it("will compare two words and return whether or not they are words by checking for at least one vowel") do
    input = AnagramFinder.new("Rsby", "Btry")
    expect((input.anagram_finder)).to(eq("You need to input actual words!"))
  end
  it("will check for antigrams") do
    input = AnagramFinder.new("Hello", "Frank")
    expect((input.anagram_finder)).to(eq("These are antigrams!"))
  end
  it("will compare two sentences and evaluate ana/antigram") do
    input = AnagramFinder.new("The Morse Code", "Here come dots!")
    expect((input.anagram_finder)).to(eq("These are anagrams!"))
  end
  it("will check each word to see if it's valid") do
    input = AnagramFinder.new("The Mrs Code", "Here cm dots!")
    expect((input.anagram_finder)).to(eq("You need to input actual words!"))
  end
  it("will return matched letters if it's not an anagram") do
    input = AnagramFinder.new("ruby", "rudy")
    expect((input.anagram_finder)).to(eq("These are not anagrams but these letters match: R:1, U:1, Y:1"))
  end
  it("will return matched letters and how many match for non-anagrams") do
    input = AnagramFinder.new("This is a string", "This is a Strong")
    expect((input.anagram_finder)).to(eq("These are not anagrams but these letters match: A:1, G:1, H:1, I:2, N:1, R:1, S:3, T:2"))
  end
end
