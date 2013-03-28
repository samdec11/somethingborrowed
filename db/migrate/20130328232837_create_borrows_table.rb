class CreateBorrowsTable < ActiveRecord::Migration
  def change
    create_table :borrows do |t|
      t.integer :owner_id
      t.integer :borrower_id
      t.date :borrow_date
      t.date :return_date
      t.boolean :active, :default => true
      t.integer :item_id
      t.timestamps
    end
  end
end
