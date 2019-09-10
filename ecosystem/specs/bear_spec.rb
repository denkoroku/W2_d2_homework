require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class TestBear < MiniTest::Test

  def setup
    @bear1 = Bear.new("Pooh",["salmon","perch", "catfish"])
  end

  def test_bear_name
    assert_equal("Pooh", @bear1.name)
  end

  def test_bear_stomach
    assert_equal(3, @bear1.stomach.count)
  end

#Need to sort this test to see if stomach contents increase by 1
  def test_bear_eats_fish__stomach
    @bear1.eat_fish(@river1, @fish1)
    assert_equal(4, @bear1.stomach.count)
  end

#Need to sort this test to see if river no_fish goes down by 1
  def test_bear_eats_fish__river
    @bear1.eat_fish(@river1, @fish1)
    assert_equal(39999, @river1.no_of_fish)
  end

#Need to sort this test for food count
  def test_fish_count
    @bear1.food_count
    assert_equal(3, bear1.stomach.count)
  end
end
