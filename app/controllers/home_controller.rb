class HomeController < ApplicationController
  def index
    @categories = Category.order(:name)
    @popular = Item.all.sort_by!{|x| x.num_borrows}.reverse
  end
end