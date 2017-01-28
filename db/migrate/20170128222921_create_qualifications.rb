class CreateQualifications < ActiveRecord::Migration[5.0]
  def change
    create_table :qualifications do |t|
      t.float :note
      t.float :amount_spent
      t.timestamps
    end
  end
end
