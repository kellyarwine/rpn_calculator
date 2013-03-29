require 'postfix'

describe Postfix do
  [

    ["4", 4],
    ["4", 4],
    [" 4 ", 4],
    ["4 3 +", 7],
    ["4 3 -", 1],
    ["4 3 *", 12],
    ["4 3 /", 4/3],
    ["3 2 1 + *", 9],
    ["3 3 3 + *", 18],
    ["3 3 3 * *", 27],
    ["6 4 5 + *", 54],
    ["4 5 + 6 *", 54],
    ["4 5 + 1 + 1 + 1 + 6 *", 72],

  ].each do |expression,result|

    it "returns #{result}" do
    subject.calculate(expression).should == result
    end

  end

end