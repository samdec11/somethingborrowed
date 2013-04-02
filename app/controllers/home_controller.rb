class HomeController < ApplicationController
  def index
    @popular = Item.all.sort_by!{|x| x.num_borrows}.reverse
    @popular = @popular[0,4]
    c = Category.all.select{|x| x.items.length >= 4 }
    @category1 = c.pop
    @category2 = c.pop
    @category3 = c.pop
  end
end