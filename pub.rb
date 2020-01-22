class Pub

  attr_reader :name, :till

  def initialize(name, till, beers)
    @name = name
    @till = till
    @beers = beers
  end

  def number_of_beers
    @beers.count
  end

  def sell_beer(amount)
    @till += amount
  end
end
