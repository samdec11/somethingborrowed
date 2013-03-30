class ItemsController < ApplicationController
  def new
    @item = Item.new
  end
  def create
    @item = Item.create(params[:item])
    @auth.items << @item
  end

  def map
    @items = Item.all
  end
end