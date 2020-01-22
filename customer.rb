class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @drinks_consumed = []
  end

  def reduce_money_wallet(amount)
    if @wallet < amount
      return "Not enough funds"
    else
      @wallet -= amount
    end
  end

  def buy_beer_from_pub(pub, drink)
   reduce_money_wallet(drink.price)
    #reduce customer money
    pub.sell_beer(drink.price)
    #add money to till
  end

end
