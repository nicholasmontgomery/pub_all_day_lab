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
end
