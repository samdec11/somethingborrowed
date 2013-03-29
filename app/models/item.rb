# == Schema Information
#
# Table name: items
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  description  :string(255)
#  image        :text             default("blender.jpg")
#  instructions :text
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Item < ActiveRecord::Base
  attr_accessible :name, :description, :image, :instructions, :remote_image_url
  validates :name, :presence => true
  validates :description, :presence => true
  has_and_belongs_to_many :categories
  has_many :borrows
  has_many :reviews, :as => :reviewable
  belongs_to :user
  mount_uploader :image, ImageUploader
end
