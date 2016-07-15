class HomeController < ApplicationController
  def index
    @nation = Africa.all
    @nation1 = Europe.all
    @nation2 = American.all
    @nation3 = Post.all
  end
  
  def detail
    @divide = Africa.find(params[:id])
    
  end
end
