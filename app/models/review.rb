# == Schema Information
#
# Table name: reviews
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  rating          :integer
#  post_date       :date
#  text            :text
#  reviewable_id   :integer
#  reviewable_type :string(255)
#

class Review < ActiveRecord::Base
  attr_accessible :title, :rating, :post_date, :text
  belongs_to :reviewable, :polymorphic => true
  validates :title, :presence => true
end
