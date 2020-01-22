class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @drinks_consumed = []
  end

  def reduce_money_wallet(amount)
    @wallet -= amount
  end
end
