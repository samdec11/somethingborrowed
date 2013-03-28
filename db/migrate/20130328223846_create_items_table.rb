class CreateItemsTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :image
      t.text :instructions
      t.integer :user_id
      t.timestamps
    end
  end
end