class ChangeImagesToText < ActiveRecord::Migration
  def change
    change_column :items, :image, :text, :default => 'blender.jpg'
    change_column :users, :image, :text, :default => 'batman.jpg'
  end
end
