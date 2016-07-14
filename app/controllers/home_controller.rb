class HomeController < ApplicationController
  def index
    @nation = Africa.all
  end
  
  def detail
    @divide = Africa.find(params[:id])
  end
end
