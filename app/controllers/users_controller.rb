class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @review = Review.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
  end
end