require 'equation'
require 'solution'

class Algorithm

  def initialize
    @solution = Solution.new
  end

  def calculate(equation)
    equation.equation_array.each do |char|
      if char =~ /\d/
        @solution.stack_push(char)
      else
        result = [@solution.stack_pop,@solution.stack_pop].reverse.reduce(char.to_sym)
        @solution.stack_push(result)
      end
    end

    @solution.result
  end


end