require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  fixtures :restaurants

  def test_restaurant
    restaurant = Restaurant.new(
           :name => restaurants(:fasano).nome,
                 :address => restaurants(:fasano).address,
           :specialty => restaurants(:fasano).specialty)
            msg = "Restaurant was not saved"
        + "errors: ${restaurant.errors.inspect}"
        assert restaurant.save, msg

        restaurant_fasano_copy = Restaurant.find(restaurant.id)

        assert_equal restaurant.name, restaurant_fasano_copy.nome
      end
  # test "the truth" do
  #   assert true
  # end
end
