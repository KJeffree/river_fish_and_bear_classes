require("minitest/autorun")
require("minitest/rg")
require_relative("../bears")
require_relative("../fish")
require_relative("../river")

class TestBear < MiniTest::Test

  def setup
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Haddock")
    @fish3 = Fish.new("Pike")
    @fish4 = Fish.new("Tuna")
    @river = River.new("Amazon", [@fish1, @fish2, @fish3, @fish4])
    @bear = Bear.new("Yogi", "Grizzly", [])
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_has_an_empty_stomach
    assert_equal([], @bear.stomach)
  end

  def test_take_fish_from_river
    @bear.take_fish_from_river(@river, @fish1)
    assert_equal(1, @bear.stomach.length)
  end

  def test_take_fish_from_river__river_lost_fish
    @bear.take_fish_from_river(@river, @fish1)
    assert_equal(3, @river.fish.length)
  end

  def test_bear_can_roar
    assert_equal("Roooaaarrr!", @bear.roar)
  end

  def test_count_bear_food
    @bear.take_fish_from_river(@river, @fish1)
    @bear.take_fish_from_river(@river, @fish2)
    assert_equal(2, @bear.count_food)
  end
end
