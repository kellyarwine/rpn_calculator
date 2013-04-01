require 'spec_helper'

describe Equation do
  let(:data)  { "4 5 - 1 + 1 + 1 + -6 *" }
  let(:subject)   { Equation.new(data)   }

  it "returns an array of equation components" do
    subject.components.should == ["4", "5", "-", "1", "+", "1", "+", "1", "+", "-6", "*"]
  end

end