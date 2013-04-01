class ReviewsController < ApplicationController
  def owner_review_choice
    borrow = Borrow.find(params[:borrow_id])
    @response = params[:when_review]
    if @response == "later"
      Notifications.review_later_message(borrow).deliver
    else
      @review = Review.new
    end
  end
end