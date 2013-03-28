require 'spec_helper'

describe Review do
  let(:review_item) {Review.create(title: 'Awesome blender!', rating: 5, post_date: 2013-03-28, text: "This was, bar-none, the greatest blender I've ever used!")}
  let(:review_user) {Review.create(title: 'Nice borrower', rating: 4, post_date: 2013-03-27, text: "Nice guy. Returned microwave in decent condition.")}
  describe '.create' do
    it 'has an id' do
      expect(:review_item.id).to_not be nil
      expect(:review_user.id).to_not be nil
    end
  end
end