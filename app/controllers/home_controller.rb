class HomeController < ApplicationController
  
  def index
    
    @nation_Afr = Africa.all
    @nation_Eur = Europe.all
    @nation_Ame = America.all
    @nation_Asi = Post.all
    
  end
  
  def info

    @every_post1  = Post.find(params[:id].to_i)
    
  end
  
  def write

    unless user_signed_in?
      redirect_to '/users/sign_in'
    end
     
      @one_post = Post.find(params[:id].to_i)
     
  end
  
  def pass
  
    new_post = Writing.new
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.post_id = params[:id_of_post]
    new_post.user = current_user
    new_post.save
    
    redirect_to "/home/info/#{new_post.post_id}"
    
  end
  
  def read
      
    @every_post= Writing.find(params[:id]) 
    @every_post.number = @every_post.number + 1
    @every_post.save 
    
  end
  
  def destroy
      
    @one_post = Writing.find(params[:id])
    @one_post.destroy
    
    redirect_to "/"
    
  end
  
  def update_view
      
    @one_post = Writing.find(params[:id])
  
    
  end
   
  def update
      
    @one_post = Writing.find(params[:id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.save
    
    
    
    redirect_to "/home/read/#{@one_post.id}"
    
  end
   
  def reply_write
      
    reply = Reply.new
    reply.content = params[:content]
    reply.writing_id = params[:id_of_post]
    reply.save
    
    redirect_to :back
    
  end
   
  def update
      
    @one_post = Writing.find(params[:id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.save
    
    redirect_to "/home/info"
    
  end
   
  def twitter
      
    @every_twitter = Twitter.all.order("id desc")
    
  end
   
  def twitter_write
  

    new_twitter = Twitter.new
    new_twitter.twitter_title = params[:twitter_title]
    new_twitter.twitter_content = params[:twitter_content]
    new_twitter.twitter_name = params[:twitter_name]
    new_twitter.save
    
    redirect_to "/home/twitter"
    
  end
   
  def twitter_comment
      
    new_comment = TwitterComment.new
    new_comment.twitter_id = params[:twitter_id]
    new_comment.twitter_comment = params[:twitter_comment]
    new_comment.name = params[:name]
    new_comment.save
    
    redirect_to '/home/twitter'

  end
   
end
