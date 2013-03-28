# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  image           :string(255)      default("http://designyoutrust.com/wp-content/uploads7/designfetishnophotofacebook1.jpg")
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email, :image, :password, :password_confirmation
end
