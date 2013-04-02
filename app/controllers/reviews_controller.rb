class ReviewsController < ApplicationController
  def owner_review_choice
    @borrow = Borrow.find(params[:borrow_id])
    @response = params[:when_review]
    if @response == "later"
      Notifications.review_later_message(borrow).deliver
    else
      @review = Review.new
    end
  end
  def user
    @review = Review.new
    @borrow = Borrow.find(params[:borrow])
  end
  def item
    @review = Review.new
    @borrow = Borrow.find(params[:borrow])
  end
  def create
    Review.create(params[:review])
    redirect_to(user_path(@auth))
  end
end