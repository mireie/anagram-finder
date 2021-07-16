#! ./lib/bin/env ruby
require ('./lib/anagram_finder.rb')

puts "\033[103;30;1;51mHey There, I'm Annagrammar! Please don't call me Anna.\033[0m"
def anna 
  puts "\n\033[103;30;1;51mPlease enter the first string to be Annalyzed:\033[0m"
  input1 = gets.chomp
  puts "\n\033[103;30;1;51mStellar! How about another?\033[0m"
  input2 = gets.chomp
  puts "\033[42;30;51m"
  anagram_test = AnagramFinder.new(input1,input2)
  puts anagram_test.anagram_finder
  puts "\n\033[103;30;1;51mLet's play again! Type \033[31;1;51m'exit'\033\033[103;30;1;51m to leave or anything else to continue!\n\033[0m"
  continue = gets.chomp
  if continue === "exit"
    puts "\033[103;30;1;51mThanks for playing!\033[0m"
    exit
  else
    anna()
  end
end
anna()
