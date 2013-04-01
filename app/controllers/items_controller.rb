class ItemsController < ApplicationController
  def new
    @item = Item.new
  end
  def create
    @item = Item.create(params[:item])
    @auth.items << @item
  end

  def map
    @items = Item.all.select{|x| x.is_borrowed? == false}
  end


  def show
    @item = Item.find(params[:id])
  end

  def borrow_request
    item = Item.find(params[:id])
    Borrow.create(owner_id:item.user.id, borrower_id:@auth.id, item_id:item.id)
    Notifications.borrow_request_message(item.user, @auth, item).deliver
  end

  def borrow_instructions
    @item = Item.find(params[:item])
    @borrower = User.find(params[:borrower])
    @owner = User.find(params[:owner])
  end

  def deliver_borrow_instructions
    Notifications.borrow_instructions_message(User.find(params[:owner]), User.find(params[:borrower]), Item.find(params[:item]), params[:where], params[:when], params[:email], params[:phone], params["special instructions"]).deliver
  end

  def search
    query = params[:query]
    @items = Item.where("name @@ :q or description @@ :q or image @@ :q", :q => query)
  end

  def return_verification
    borrow = Borrow.find(params[:borrow])
    borrow.pending = true
    borrow.save
    Notifications.return_verification_message(borrow).deliver
    render :json => "delivered"
  end

  def return_verification_validation
    @borrow = Borrow.find(params[:borrow])
  end

  def return
    @borrow = Borrow.find(params[:borrow])
    if params[:answer] == "yes"
      @borrow.active = false
      @borrow.return_date = Date.today.to_s
      @borrow.pending = false
      @borrow.save
      @borrow
    else
      @borrow
    end
  end
end