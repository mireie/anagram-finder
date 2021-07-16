require('rspec')
require('anagram_finder')
require('pry')

describe('#AnagramFinder') do
  it("will compare two words and return whether or not they are anigrams") do
    input = AnagramFinder.new("ruby","bury")
    expect((input.anagram_finder)).to(eq(true))
  end

end