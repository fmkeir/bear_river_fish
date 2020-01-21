require('minitest/autorun')
require('minitest/reporters')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

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

  def test_take_fish_from__river
    @fish1 = Fish.new("Graham")
    @fish2 = Fish.new("Alan")
    @fish3 = Fish.new("Rodger")
    @fishes = [@fish1, @fish2, @fish3]
    @river = River.new("Amazon", @fishes)

    @bear.take_fish_from(@river)
    assert_equal(1, @bear.count_food_in_stomach)
    assert_equal(2, @river.count_fishes)
  end

  def test_roar
    assert_equal("ROAR", @bear.roar)
  end
end
