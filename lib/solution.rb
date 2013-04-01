class Solution
  attr_accessor :solution

  def initialize
    @solution = []
  end

  def stack_push(operand)
    @solution.push(operand.to_i)
  end

  def stack_pop
    @solution.pop
  end

  def result
    @solution.first
  end

end