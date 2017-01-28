class CreateDishesRestaurantsJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes_restaurants, id: false do |t|
      t.integer :dish_id
      t.integer :restaurant_id
    end
  end
end
