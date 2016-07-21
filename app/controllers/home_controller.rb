class HomeController < ApplicationController
  def index
    @nation_Afr = Africa.all
    @nation_Eur = Europe.all
    @nation_Ame = America.all
    @nation_Asi = Post.all
  end
  
  def detail
    @divide = Africa.find(params[:id])
    
  end
end