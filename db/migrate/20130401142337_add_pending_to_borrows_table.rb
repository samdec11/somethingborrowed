class AddPendingToBorrowsTable < ActiveRecord::Migration
  def change
    add_column :borrows, :pending, :boolean, :default => false
  end
end
