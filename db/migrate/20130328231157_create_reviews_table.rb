class CreateReviewsTable < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :rating
      t.date :post_date
      t.text :text
      t.integer :reviewable_id
      t.string :reviewable_type
    end
  end
end
