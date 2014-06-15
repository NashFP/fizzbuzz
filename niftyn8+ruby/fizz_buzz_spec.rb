require 'bundler/setup'
require_relative './fizz_buzz'
require 'rantly'
require 'rantly/property'
require 'rantly/rspec_extensions'

RSpec.describe FizzBuzz do
  it "returns empty array for all numbers < 1" do
    property_of { i = integer; guard i < 1; i}
      .check { |i| expect(FizzBuzz.call(i).to_a.empty?).to be_truthy }
  end

  it "replaces multiples of three with \"Fizz\"" do
    property_of { range(1, 1000) }
      .check { |i|
      FizzBuzz.call(i).each { |n| expect(n % 3).to_not eq(0) unless n == "Fizz" }
    }
  end

  it "replaces multiples of five with \"Buzz\"" do
    property_of { range(1, 1000) }
      .check { |i|
      FizzBuzz.call(i).each { |n| expect(n % 5).to_not eq(0) unless n == "Buzz" }
    }
  end

  it "replaces multiples of five AND three with \"FizzBuzz\"" do
    property_of { range(1, 1000) }
      .check { |i|
      FizzBuzz.call(i).each { |n| expect(n % 15).to_not eq(0) unless n == "FizzBuzz" }
    }
  end

  describe "running fizz_buzz.rb at the command line" do
    it "writes to standard out when given an argument" do
      expected = "1\n2\nFizz\n"
      result = %x(ruby fizz_buzz.rb 3)
      expect(result).to eq(expected)
    end
  end
end
