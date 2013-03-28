require 'postfix'

describe Postfix do
  [

    ["4", 4],
    [" 4 ", 4],
    ["4 3 +", 7],
    ["4 3 -", 1],
    ["4 3 *", 12],
    ["4 3 /", 4/3]
    ["3 2 1 + x", 9]
    ["3 3 3 + x", 27]

  ].each do |expression,result|

    it "returns #{result}" do
    subject.calculate(expression).should == result
    end

  end

  # 3 2 1 + x

end