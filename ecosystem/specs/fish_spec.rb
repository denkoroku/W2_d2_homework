require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Bubbles")
  end

  def test_fish_name
    assert_equal("Bubbles", @fish1.fish_name)
  end

end
