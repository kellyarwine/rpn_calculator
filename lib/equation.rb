class Equation
  attr_accessor :components

  def initialize(data)
    @components = data.split(" ")
  end

end