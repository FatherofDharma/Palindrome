#!/usr/bin/ruby

require('pry')

class Palindrome
  def initialize()
  end

  def half(word)
    @word = word
    @split_word = word.split("")
    @first_half = []
    @last_half = []
    x = 0
    y = @split_word.length - 1
    if @split_word.length % 2 == 0
      while (x < @split_word.length / 2)
        @first_half.push(@split_word[x])
        x += 1
      end
      until (y < @split_word.length / 2)
        @last_half.push(@split_word[y])
        y -= 1
      end
    else
      while (x <= @split_word.length / 2)
        @first_half.push(@split_word[x])
        x += 1
      end
      until (y < @split_word.length / 2)
        @last_half.push(@split_word[y])
        y -= 1
      end
    end
    def pal_check
      if @first_half == @last_half
        puts "Your word #{@word} is a palindrome!"
      else
        puts "Your word #{@word} is not a palindrome. :-("
      end
    end
  end

  def first
    @first_half
  end

  def last
    @last_half
  end
end
puts "Enter a word: "
input = gets.chomp
word1 = Palindrome.new()
word1.half(input)
p word1.first
p word1.last
word1.pal_check
