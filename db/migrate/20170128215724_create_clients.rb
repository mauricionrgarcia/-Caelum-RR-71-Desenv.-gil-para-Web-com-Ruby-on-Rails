class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name, limit: 80
      t.integer :years_old
      t.timestamps
    end
  end
end
