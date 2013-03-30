# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  image           :text             default("batman.jpg")
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  address         :text
#  lat             :float
#  long            :float
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email, :image, :password, :password_confirmation, :remote_image_url, :address
  has_many :items
  has_many :reviews, :as => :reviewable
  has_many :reviews
  mount_uploader :image, UserImageUploader

  before_save :get_coords
  private
  def get_coords
    results = Geocoder.search(self.address).first
    if results.present?
      self.lat = results.latitude
      self.long = results.longitude
    end
  end
end
