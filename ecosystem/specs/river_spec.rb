require('minitest/autorun')
require('minitest/rg')
require_relative('../river')



class TestRiver < MiniTest::Test

  def setup
    @river1 = River.new("Dee", 40000)
  end

  def test_river_name
    assert_equal("Dee", @river1.name)
  end

  def test_fish_count
    @river1.count_fish
    assert_equal(40000, @river1.no_of_fish)
  end
end
