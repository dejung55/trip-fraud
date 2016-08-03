class AmericaController < ApplicationController
  
  def info
    
    @every_post1 = America.find(params[:id].to_i)
    
  end
  
  def write
    
    unless user_signed_in?
      redirect_to '/users/sign_in'
    end
      @one_post = America.find(params[:id].to_i)
      
  end
  
  def pass
    
    new_post = Writing.new
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.america_id = params[:id_of_post]
    new_post.user = current_user
    new_post.save

    redirect_to "/america/info/#{new_post.america_id}"
    
  end
  
  def read
    
    @every_post= Writing.find(params[:id])  
    
  end
  
   def update_view
     
     @one_post = Writing.find(params[:id])
     
   end
  
  
  def update
    
    @one_post = Writing.find(params[:id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.save
    
    redirect_to "/america/read/#{@one_post.id}"
    
  end
   
  def destroy
    
    @one_post = Writing.find(params[:id])
    @one_post.destroy
    
    redirect_to "/"
    
  end
  
  def update_view
    
    @one_post = Writing.find(params[:id])
    
  end
   
  def reply_write
    
    reply = Reply.new
    reply.content = params[:content]
    reply.writing_id = params[:id_of_post]
    reply.save
    
    redirect_to :back
    
  end
   
end
