class HomeController < ApplicationController
  def index
    @nation_Afr = Africa.all
    @nation_Eur = Europe.all
    @nation_Ame = America.all
    @nation_Asi = Post.all
  end
  
  def info
        @every_post = Writing.all
  end
  
  def write
  end
  
  def pass
    new_post = Writing.new
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.save
    
    redirect_to '/home/info'
  end
  
  def read
  @every_post= Writing.find(params[:id])  
  end
  
  def destroy
    @one_post = Writing.find(params[:id])
    @one_post.destroy
    redirect_to "/home/info"
  end
  
   def update_view
    @one_post = Writing.find(params[:id])
   end
   
    def update
    @one_post = Writing.find(params[:id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.save
    redirect_to "/home/info"
    end
   
end
