class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps
    end

    add_index :comments, :commentable_id
    add_index :comments, :commentable_type
  end

  def sefl.down
    drop_table :comments
  end
end