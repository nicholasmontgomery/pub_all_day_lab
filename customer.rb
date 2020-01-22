class Customer

  attr_reader :name, :wallet, :age, :drunkeness

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @drinks_consumed = []
    @drunkeness = 0
    @age = age
  end

  def reduce_money_wallet(amount)
    if @wallet < amount
      return "Not enough funds"
    else
      @wallet -= amount
    end
  end

  def increase_drunkeness(number)
    @drunkeness += number
  end


  def buy_beer_from_pub(pub, drink)
    if @wallet < drink.price || @age < 18 || @drunkeness >= 10
      return "Not tonight, son"
    else
      reduce_money_wallet(drink.price)
      increase_drunkeness(drink.alcohol_level)
    #reduce customer money
    #check if money was taken, if not, produce string.
      pub.sell_beer(drink.price)
    end
    #add money to till
  end

end
