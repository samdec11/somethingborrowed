class SessionController < ApplicationController
  def new
  end

  def create
    user = User.where(:email => params[:email]).first
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
    else
      session[:user_id] = nil
    end
    authenticate
  end

  def create2
    session[:user_id] = nil
    authenticate
    user = User.where(:email => params[:email]).first
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      @borrow = Borrow.find(params[:borrow_id])
      else
      session[:user_id] = nil
    end
    authenticate
  end

  def destroy
    session[:user_id] = nil
    authenticate
    redirect_to(root_path)
  end
end
