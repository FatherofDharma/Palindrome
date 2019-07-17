require('rspec')
require('pal_logic')

describe('Palindrome') do
  it("splits an even letter word in half and returns the first half")do
    word1 = Palindrome.new()
    word1.half("turtle")
    expect(word1.first).to(eq(["t", "u", "r"]))
  end

  it("splits an even letter word in half and returns the last half reversed")do
    word1 = Palindrome.new()
    word1.half("turtle")
    expect(word1.last).to(eq(["e", "l", "t"]))
  end

  it("splits an odd letter word in half and returns the first half")do
    word1 = Palindrome.new()
    word1.half("racecar")
    expect(word1.last).to(eq(["r", "a", "c", "e"]))
  end

  it("splits an odd letter word in half and returns the last half reversed")do
    word1 = Palindrome.new()
    word1.half("racecar")
    expect(word1.last).to(eq(["r", "a", "c", "e"]))
  end

end
