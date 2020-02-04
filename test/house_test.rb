require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'


class HouseTest < Minitest::Test
  def test_it_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end

  def test_it_has_a_price
    house = House.new("$400000", "123 sugar lane")
    assert_equal 400000, house.price

    house2 = House.new("250000", "124 sugar lane")
    assert_equal 250000, house2.price
  end

  def test_it_has_an_address
    house = House.new("$400000", "123 sugar lane")
    assert_equal 400000, house.address
  end
end
