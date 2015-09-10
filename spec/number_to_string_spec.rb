require "spec_helper"
require "./number_to_string"

describe NumberToString do

  before do
    number = 1
    @number_to_string = NumberToString.new(number)
  end

  describe "#array" do
    it "convers the number into an array of numbers" do
      expect(@number_to_string.array).to eq([1])

    end
  end

  describe "#ones_place" do
    it "converts the ones place to a word if there is no tens place" do
      one = 1
      tens_place = 0

      expect(@number_to_string.ones_place(one, tens_place)).to eq "one"
    end
  end

  describe "#teens" do
    it "convers the tens place to a word" do
      tens = 1
      one = 5

      expect(@number_to_string.teens(one, tens)).to eq "fifteen"
    end
  end
end