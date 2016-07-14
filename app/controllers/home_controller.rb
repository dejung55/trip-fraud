class HomeController < ApplicationController
  def index
    @nation = Africa.all
  end
end
