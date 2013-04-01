class Stack
  attr_accessor :stack

  def initialize
    @stack = []
  end

  def push(operand)
    @stack.push(operand.to_i)
  end

  def pop(number_of_elements = 1)
    result = []
    number_of_elements.times { result << @stack.pop }
    result
  end

end