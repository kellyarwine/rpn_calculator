require 'spec_helper'

describe Stack do

  it "has a solution that is an empty array" do
    subject.stack.should == []
  end

  it "injects a value at the end of the solutions array" do
    subject.stack = [2]
    subject.push("1").should == [2, 1]
  end

  it "removes a value at the end of the solutions array" do
    subject.stack = [1, 2]
    subject.pop.should == [2]
    subject.stack.should == [1]
  end

end