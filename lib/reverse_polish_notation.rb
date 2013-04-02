require 'data_input'
require 'stack'

class ReversePolishNotation

  def initialize
    @stack = Stack.new
  end

  def evaluate(data_input)
    data_input.components.each do |char|
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