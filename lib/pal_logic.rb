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
      while (x < @split_word.length / 2 && x >= 0)
        @first_half.push(@split_word[x])
        x += 1
      end
      until (y < @split_word.length / 2)
        @last_half.push(@split_word[y])
        y -= 1
      end
      binding.pry
    end
  end

  def first
    @first_half
  end

  def last
    @last_half
  end
end
