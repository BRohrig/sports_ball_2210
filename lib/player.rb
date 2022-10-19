class Player
  attr_reader :name, :first_name, :last_name, :monthly_cost, :contract_length

  def initialize(name, monthly_cost, contract_length)
    @name = name
    @first_name = name.split(" ")[0]
    @last_name = name.split(" ")[1]
    @monthly_cost = monthly_cost
    @contract_length = contract_length
  end

  def total_cost
    @monthly_cost * @contract_length
  end
end