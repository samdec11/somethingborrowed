# == Schema Information
#
# Table name: items
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  description     :string(255)
#  image           :text
#  instructions    :text
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  available_from  :date
#  available_until :date
#

class Item < ActiveRecord::Base
  attr_accessible :name, :description, :image, :instructions, :remote_image_url, :available_until, :available_from
  validates :name, :presence => true
  validates :description, :presence => true
  has_and_belongs_to_many :categories
  has_many :borrows
  has_many :reviews, :as => :reviewable
  belongs_to :user
  mount_uploader :image, ItemImageUploader

  # before_save :add_photo

  def lat
    self.user.lat
  end

  def long
    self.user.long
  end

  def is_borrowed?
    a = self.borrows.select{|x| x.active == true}
    if a.length == 0
      false
    else
      true
    end
  end

  def num_borrows
    self.borrows.length
  end

  # def add_photo
  #   if self.image.nil?
  #     self.image = "/assets/blender.jpg"
  #   end
  # end
end
