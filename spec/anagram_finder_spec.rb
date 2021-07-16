require('rspec')
require('anagram_finder')
require('pry')

describe('#AnagramFinder') do
  it("will compare two words and return whether or not they are anagrams") do
    input = AnagramFinder.new("ruby","bury")
    expect((input.anagram_finder)).to(eq('These are anagrams!'))
  end
  it("will compare two words and return whether or not they are anagrams regardless of case") do
    input = AnagramFinder.new("Ruby","Bury")
    expect((input.anagram_finder)).to(eq('These are anagrams!'))
  end
  it("will compare two words and return whether or not they are words by checking for at least one vowel") do
    input = AnagramFinder.new("Rsby","Btry")
    expect((input.anagram_finder)).to(eq('You need to input actual words!'))
  end
  it("will check for antigrams") do
    input = AnagramFinder.new("Hello","Frank")
    expect((input.anagram_finder)).to(eq("These are antigrams!"))
  end
  it("will compare two sentences and evaluate ana/antigram") do
    input = AnagramFinder.new("The Morse Code","Here come dots!")
    expect((input.anagram_finder)).to(eq("These are anagrams!"))
  end

end