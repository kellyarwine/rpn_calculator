require 'equation'
require 'stack'

class RPN

  def initialize
    @stack = Stack.new
  end

  def calculate(equation)
    equation.components.each do |char|
      if char =~ /\d/
        @stack.push(char)
      else
        result = @stack.pop(2).reverse.reduce(char.to_sym)
        @stack.push(result)
      end
    end

    @stack.pop.first
  end

end