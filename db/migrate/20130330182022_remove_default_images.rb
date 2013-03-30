class RemoveDefaultImages < ActiveRecord::Migration
  def change
    change_column :users, :image, :text, :default => nil
    change_column :items, :image, :text, :default => nil
  end
end
