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
  
  def search
    
  @search = Post.where('title3 = ?', params[:search]).take.id
  render "/home/search"
  
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
    
  @every_post= Writing.find(params[:id]) 

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
    reply.score = params[:rating]
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
   
   
  def twitter_destroy
    
   @twitter_post = Twitter.find(params[:id]) 
   @twitter_post.destroy
  
   redirect_to :back
  
  end
  
  def twitter_update
    
   @twitter_post = Twitter.find(params[:id])
   @twitter_post.twitter_title = params[:twitter_title]
   @twitter_post.twitter_content = params[:twitter_content]
   @twitter_post.save
   
   redirect_to "/home/twitter"
   
  end
  
  def twitter_updateview
    
   @twitter_post = Twitter.find(params[:id])
     
  end
  
   def comment_destroy
    @comment_post = TwitterComment.find(params[:id])
    @comment_post.destroy
     redirect_to :back
   end
  
   def comment_update
    @comment_post = TwitterComment.find(params[:id])
    @comment_post.twitter_comment = params[:twitter_comment]
    @comment_post.save
    redirect_to "/home/twitter"
   end
  
  def comment_updateview
    @comment_post = TwitterComment.find(params[:id])
  end
  
  def reply_destroy
    @reply_post = Reply.find(params[:id])
    @reply_post.destroy
    
    redirect_to :back
    
  end
  
  def reply_update
    
     @reply_post = Reply.find(params[:id])
     @reply_post.content = params[:content]
     @reply_post.save
    
    redirect_to "/home/info"
  end
  
  def reply_updateview
    @reply_post = Reply.find(params[:id])
  end
  
end
