require 'spec_helper'

describe ReversePolishNotation do

  [
    ["4 3 -", 1],
    ["4 3 +", 7],
    ["-4", -4],
    ["4", 4],
    [" 4 ", 4],
    ["4 3 -", 1],
    ["4 3 *", 12],
    ["4 3 /", 4/3],
    ["3 2 1 + *", 9],
    ["3 2 1 + -", 0],
    ["3 3 3 + *", 18],
    ["3 3 3 * *", 27],
    ["6 4 5 + *", 54],
    ["4 5 + 6 *", 54],
    ["4 5 + 1 + 1 + 1 + 6 *", 72],
    ["4 5 - 1 +", 0],
    ["4 5 - 1 + 1 + 1 +", 2],
    ["4 5 - 1 + 1 + 1 + -6 *", -12],
  ].each do |data_input,expectation|
    it "returns #{expectation}" do
      this_data = DataInput.new(data_input)
      subject.evaluate(this_data).should == expectation
    end
  end

end