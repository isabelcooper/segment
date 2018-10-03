class Client
  attr_reader :employees
  attr_reader :offices
  attr_reader :turnover_in_millions

  def initialize(employees, offices, turnover_in_millions)
    @employees = employees
    @offices = offices
    @turnover_in_millions = turnover_in_millions
  end
end