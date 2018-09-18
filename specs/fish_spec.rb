require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Haddock")
    @fish3 = Fish.new("Pike")
    @fish4 = Fish.new("Tuna")
  end

  def test_fish_has_name
    assert_equal("Salmon", @fish1.name)
  end

end
