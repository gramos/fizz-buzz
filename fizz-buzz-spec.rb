require "minitest/autorun"

class FizzBuzz
  def self.play(numbers)
    numbers.map do |n|
      if ( n % 3 == 0 and n % 5 == 0 )
        "FizzBuzz"
      elsif n % 3 == 0
        "Fizz"
      elsif n % 5 == 0 
        "Buzz"
      else
        n
      end
    end
  end

  def self.one_hundred
    (1..100)
  end  
end

describe FizzBuzz do
  before do
  end

  describe "when receives a list with no number dvi by 3 or 5 ... " do
    it "must return the same list" do
      _( FizzBuzz.play([1, 2]) ).must_equal [1, 2]
    end
  end

  describe "when receives a list with numbers div by 3" do
    it "must return the Fizz on every div by 3 number" do
      _( FizzBuzz.play([1, 2, 3, 4, 5, 6]) ).must_equal [1, 2, "Fizz", 4, "Buzz", "Fizz"]
    end
  end

  describe "when receives a list with numbers div by 5" do
    it "must return the Fizz on every div by 5 number" do
      _( FizzBuzz.play([1, 2, 3, 4, 5, 6]) ).must_equal [1, 2, "Fizz", 4, "Buzz", "Fizz"]
    end
  end

  describe "when receives a list with numbers div by 3 AND 5, both" do
    it "must return the FizzBuzz on every number div by 5 and 3" do
      _( FizzBuzz.play( (1..15).to_a ) ).must_equal [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]
    end
  end

  describe "#one_hundred" do
    it "must return 100 numbers from 1 to 100" do
      pp FizzBuzz.play( FizzBuzz.one_hundred )
      _( FizzBuzz.play( FizzBuzz.one_hundred ).size ).must_equal 100 
    end
  end
end
