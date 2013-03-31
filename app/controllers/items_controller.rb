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

  def search
    query = params[:query]
    @items = Item.where("name @@ :q or description @@ :q or image @@ :q", :q => query)
  end
end