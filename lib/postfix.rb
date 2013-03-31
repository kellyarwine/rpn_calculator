class Postfix
  attr_accessor :equation_array, :solution

  def initialize
    @solution = []
  end

  def calculate(equation)
    equation.split(" ").each do |char|
      if char =~ /\d/
        stack_push(char)
      else
        result = [stack_pop,stack_pop].reverse.reduce(char.to_sym)
        stack_push(result)
      end
    end

    @solution.first.to_i
  end

  def stack_push(operand)
    @solution.push(operand.to_i)
  end

  def stack_pop
    @solution.pop
  end
end