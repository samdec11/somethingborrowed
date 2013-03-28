class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :image, :default => "http://designyoutrust.com/wp-content/uploads7/designfetishnophotofacebook1.jpg"
      t.string :password_digest
      t.timestamps
    end
  end
end
