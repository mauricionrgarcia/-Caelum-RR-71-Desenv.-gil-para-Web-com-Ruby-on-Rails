class AddColumnDishIdToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :dish_id, :integer
  end
end
