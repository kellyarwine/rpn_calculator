class Postfix
  attr_accessor :equation_array, :result

  OPERATION_SYMBOLS = ["*","/","-","+"]

  def calculate(equation)
    convert_string_to_array(equation)

    while @equation_array & OPERATION_SYMBOLS != []
      calculate_running_total
    end

    @equation_array.first.to_i
  end

  def convert_string_to_array(string)
    @equation_array = string.split
  end

  def calculate_running_total
    @equation_array.each_with_index do |element,index|
      if OPERATION_SYMBOLS.include? element
        operation(element,index)
        update_evaluated_elements(index)
        return
      end
    end
  end

  def operation(operator,operator_index)
    first_operand = @equation_array[first_operand_index(operator_index)].to_i
    second_operand = @equation_array[second_operand_index(operator_index)].to_i
    operands = [first_operand,second_operand]
    @result = operands.reduce(operator.to_sym)
  end

  def first_operand_index(operator_index)
    operator_index-2
  end

  def second_operand_index(operator_index)
    operator_index-1
  end

  def update_evaluated_elements(index)
    @equation_array[index] = @result.to_s
    @equation_array.delete_at(second_operand_index(index))
    @equation_array.delete_at(first_operand_index(index))
  end

end