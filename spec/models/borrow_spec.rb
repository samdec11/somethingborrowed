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
#

require "spec_helper"

describe Borrow do
  describe ".create" do
    it "should have an id, owner, borrower, item, return date, borrow date, and activity status" do
      user1 = FactoryGirl.create(:user)
      user2 = FactoryGirl.create(:user)
      item = FactoryGirl.create(:item)
      borrow = Borrow.create(owner_id:user1.id, borrower_id:user2.id, return_date:"2013-04-15", borrow_date:"2013-03-30")
      expect(borrow).to be_an_instance_of(Borrow)
      expect(borrow.owner).to eq user1
      expect(borrow.borrower).to eq user2
      expect(borrow.return_date.to_s).to eq "2013-04-15"
      expect(borrow.borrow_date.to_s).to eq "2013-03-30"
      expect(borrow.active).to be true
    end
  end
end
