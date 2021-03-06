# == Schema Information
#
# Table name: borrows
#
#  id          :integer          not null, primary key
#  owner_id    :integer
#  borrower_id :integer
#  borrow_date :date
#  return_date :date
#  active      :boolean          default(TRUE)
#  item_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  pending     :boolean          default(FALSE)
#

class Borrow < ActiveRecord::Base
  attr_accessible :owner_id, :borrower_id, :return_date, :borrow_date, :item_id, :active
  belongs_to :item
  belongs_to :owner, :class_name => "User"
  belongs_to :borrower, :class_name => "User"

  before_save :set_borrow_date

  def set_borrow_date
    self.borrow_date = Date.today.to_s
  end
end
