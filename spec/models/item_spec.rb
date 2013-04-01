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

require 'spec_helper'

describe Item do
  let(:item) {Item.create(name: 'blender', description: "it grinds 'em up!")}
  describe '.create' do
    it 'has an id' do
      expect(item.id).to_not be nil
      expect(item.name).to eq 'blender'
      expect(item.description).to eq "it grinds 'em up!"
    end
    it 'fails validation when name and description are left empty' do
      item = Item.create
      expect(item.id).to be nil
    end
  end
  describe '#user' do
    it 'belongs to a user' do
      user = FactoryGirl.create(:user)
      user.items << item
      expect(item.user).to eq user
    end
  end

  describe "#borrows" do
    it "should have many borrows" do
      item = FactoryGirl.create(:item)
      expect(item.borrows).to eq []
    end
  end
end
