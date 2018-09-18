require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bears")

class TestRiver < MiniTest::Test

  def setup
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Haddock")
    @fish3 = Fish.new("Pike")
    @fish4 = Fish.new("Tuna")

    @river = River.new("Amazon", [@fish1, @fish2, @fish3, @fish4])
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_has_fish
    assert_equal(4, @river.fish.length)
  end

  def test_count_fish_in_river
    assert_equal(4, @river.count_fish)
  end

end
