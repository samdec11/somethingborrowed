class HomeController < ApplicationController
  def index
    @popular = Item.all.sort_by!{|x| x.num_borrows}.reverse
  end
end