require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')

class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Carlsberg", 3.20, 3)
    @drink2 = Drink.new("Becks", 4.10, 5)
  end

  def test_get_name
    assert_equal("Carlsberg", @drink1.name)
  end

  def test_get_price
    assert_equal(3.20, @drink1.price)
  end

  def test_get_alcohol_level
    assert_equal(3, @drink1.alcohol_level)
  end
end
