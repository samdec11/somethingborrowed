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
#  user_id         :integer
#

class Review < ActiveRecord::Base
  attr_accessible :title, :rating, :text
  belongs_to :reviewable, :polymorphic => true
  belongs_to :user
  validates :title, :presence => true

  def item
    self.reviewable if self.reviewable.is_a?(Item)
  end
  def borrower
    self.reviewable if self.reviewable.is_a?(User)
  end

  before_save :get_date
  private
  def get_date
    self.post_date = Date.today
  end
end
