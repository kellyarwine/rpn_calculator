class Equation
  attr_accessor :equation_array

  def initialize(data)
    @equation_array = data.split(" ")
  end

end