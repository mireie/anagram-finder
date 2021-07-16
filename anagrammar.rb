#! ./lib/bin/env ruby
require ('./lib/anagram_finder.rb')

puts "Hey there, I'm Anna the Annagrammar!\nPlease enter the first string to be Annalyzed:"
input1 = gets.chomp
puts "Stellar! How about another?"
input2 = gets.chomp
anagram_test = AnagramFinder.new(input1,input2)
puts anagram_test.anagram_finder