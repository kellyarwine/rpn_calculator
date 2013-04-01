require 'equation'

describe Solution do

  it "has a solution that is an empty array" do
    subject.solution.should == []
  end

  it "injects a value at the end of the solutions array" do
    subject.solution = [2]
    subject.stack_push("1").should == [2, 1]
  end

  it "removes a value at the end of the solutions array" do
    subject.solution = [1, 2]
    subject.stack_pop.should == 2
    subject.solution.should == [1]
  end

  it "returns the first element of the array" do
    subject.solution = [1, 2]
    subject.result.should == 1
  end

end