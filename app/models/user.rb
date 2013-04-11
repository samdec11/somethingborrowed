# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  image           :text
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  address         :text
#  lat             :float
#  long            :float
#  phone           :string(255)
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email, :image, :password, :password_confirmation, :remote_image_url, :address, :phone
  has_many :items
  has_many :reviews, :as => :reviewable
  has_many :reviews
  mount_uploader :image, UserImageUploader

  def lends
    Borrow.where(:owner_id => self.id)
  end
  def borrows
    Borrow.where(:borrower_id => self.id)
  end
  def currently_borrowing
    Borrow.where(:borrower_id => self.id ).where(:active => true)
  end
  def currently_lending
    Borrow.where(:owner_id => self.id).where(:active => true)
  end
  def previously_borrowed
    Borrow.where(:borrower_id => self.id).where(:active => false)
  end
  def previously_lent
    Borrow.where(:owner_id => self.id).where(:active => false)
  end
  def borrower_reviews
    Review.where(:reviewable_id => self.id).where(:reviewable_type => self.class)
  end

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
