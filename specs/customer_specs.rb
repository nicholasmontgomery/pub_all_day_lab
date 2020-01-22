require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer')
require_relative('../drink')
require_relative('../pub')

class CustomerTest < MiniTest::Test
  def setup
    @customer1 = Customer.new("Andrew", 5, 28)
    @customer2 = Customer.new("Nick", 1, 16)
  end

  def test_get_customer_name
    assert_equal("Andrew", @customer1.name)
  end

  def test_get_money_in_wallet
    assert_equal(1, @customer2.wallet)
  end

  def test_get_age
    assert_equal(16, @customer2.age)
  end

  def test_get_drunkeness
    assert_equal(0, @customer1.drunkeness)
  end

  def test_reduce_money_wallet
    @customer1.reduce_money_wallet(3)
    assert_equal(2, @customer1.wallet)
  end

  def test_customer_has_enough_money
    assert_equal("Not enough funds", @customer2.reduce_money_wallet(3))
  end

  def test_buy_beer_from_pub
    @drink = Drink.new("Bulmers", 2, 6)
    @pub1 = Pub.new("Chanter", 0, @drink)
    @customer1.buy_beer_from_pub(@pub1, @drink)
    assert_equal(3, @customer1.wallet)
    assert_equal(2, @pub1.till)

  end


end
