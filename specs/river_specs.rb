require('minitest/autorun')
require('minitest/reporters')
require_relative('../river')
require_relative('../fish')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Graham")
    @fish2 = Fish.new("Alan")
    @fish3 = Fish.new("Rodger")
    @fishes = [@fish1, @fish2, @fish3]
    @river = River.new("Amazon", @fishes)
  end

  def test_count_fishes
    assert_equal(3, @river.count_fishes)
  end

  def test_remove_fish
    @river.remove_fish
    assert_equal(2, @river.count_fishes)
  end

end
