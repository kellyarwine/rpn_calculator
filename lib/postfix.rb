class Postfix
  OPERATION_SYMBOLS = ["*","/","-","+"]

  def calculate(n)
    convert_string_to_array(n)

    if first_element_math_symbol?
      operation
    else
      @calculate_array.first.to_i
    end
  end

  def convert_string_to_array(string)
    @calculate_array = string.split
  end

  def first_element_math_symbol?
    OPERATION_SYMBOLS.include? @calculate_array.last
  end

  def operation
    if @calculate_array.last == "+"
      @calculate_array[0].to_i + @calculate_array[1].to_i
    elsif @calculate_array.last == "-"
      @calculate_array[0].to_i - @calculate_array[1].to_i
    elsif @calculate_array.last == "*"

      @calculate_array[0].to_i * @calculate_array[1].to_i
    elsif @calculate_array.last == "/"
      @calculate_array[0].to_i / @calculate_array[1].to_i
    end
  end

end