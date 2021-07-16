require('rspec')
require('anagram_finder')
require('pry')

describe('#AnagramFinder') do
  it("will compare two words and return whether or not they are anagrams") do
    input = AnagramFinder.new("ruby","bury")
    expect((input.anagram_finder)).to(eq('These words are anagrams'))
  end
  it("will compare two words and return whether or not they are anagrams regardless of case") do
    input = AnagramFinder.new("Ruby","Bury")
    expect((input.anagram_finder)).to(eq('These words are anagrams'))
  end
  it("will compare two words and return whether or not they are words by checking for at least one vowel") do
    input = AnagramFinder.new("Rsby","Btry")
    expect((input.anagram_finder)).to(eq('You need to input actual words!'))
  end

end