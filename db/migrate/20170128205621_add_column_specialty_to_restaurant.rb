class AddColumnSpecialtyToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :specialty, :string, limit: 40
  end
end
