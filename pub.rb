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
end
