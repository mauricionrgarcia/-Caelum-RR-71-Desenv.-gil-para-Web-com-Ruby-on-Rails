class AddClientIdAndRestaurantIdToQualifications < ActiveRecord::Migration[5.0]
  def change
    add_column :qualifications, :client_id, :integer
    add_column :qualifications, :restaurant_id, :integer
  end
end
