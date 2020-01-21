require('minitest/autorun')
require('minitest/reporters')
require_relative('../bear')
require_relative('../fish')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class BearTest < MiniTest::Test
  def setup
    @bear = Bear.new("Gertrude", :brown)

    @fish1 = Fish.new("Michael")
  end

  def test_food_count
    assert_equal(0, @bear.count_food_in_stomach)
  end

  def test_eat_fish
    @bear.eat_fish(@fish1)
    assert_equal(1, @bear.count_food_in_stomach)
  end

end
