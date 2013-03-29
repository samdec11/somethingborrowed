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

require 'spec_helper'

describe Review do
  let(:item_review) {Review.create(title: 'Awesome blender!', rating: 5, post_date: '2013-03-28', text: "This was, bar-none, the greatest blender I've ever used!")}
  let(:borrower_review) {Review.create(title: 'Nice borrower', rating: 4, post_date: '2013-03-27', text: "Nice guy. Returned microwave in decent condition.")}
  let(:item) {FactoryGirl.create(:item)}
  let(:user) {FactoryGirl.create(:user)}

  describe '.create' do
    it 'has an id' do
      expect(item_review.id).to_not be nil
      expect(borrower_review.id).to_not be nil
    end
    it 'fails validation when title is blank' do
      review = Review.create
      expect(review.id).to be nil
    end
  end

  describe '#item' do
    it 'returns an Item object' do
      item.reviews << item_review
      expect(item_review.item).to eq item
    end
  end

  describe '#borrower' do
    it 'returns a User object' do
      borrower_review.reviewable= user
      expect(borrower_review.borrower).to be_an_instance_of(User)
    end
  end

  describe '#user' do
    it 'returns a User object' do
      borrower_review.user = user
      expect(borrower_review.user).to be_an_instance_of(User)
    end
  end
end
