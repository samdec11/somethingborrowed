class AddAvaialabilityDatesToItems < ActiveRecord::Migration
  def change
    add_column :items, :available_from, :date
    add_column :items, :available_until, :date
  end
end
