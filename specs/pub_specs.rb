require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub')
require_relative('../drink')

class PubTest < MiniTest::Test
  def setup
    @drink1 = Drink.new("Budweiser", 3)
    @drink2 = Drink.new("Magners", 4)
    @pub1 = Pub.new("The Blue Blazer", 0, [@drink1, @drink2])
  end

  def test_get_pub_name
    assert_equal("The Blue Blazer", @pub1.name)
  end

  def test_get_till_amount
    assert_equal(0, @pub1.till)
  end

  def test_get_number_of_drinks
    assert_equal(2, @pub1.number_of_beers)
  end

  def test_add_money_to_til
      @pub1.sell_beer(@drink1.price)
    assert_equal(3, @pub1.till)
  end
end
