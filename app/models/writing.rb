class Writing < ActiveRecord::Base
    belongs_to :user
    has_many :replies
    belongs_to :posts
    belongs_to :americas
    belongs_to :europes
    belongs_to :africa
 
 # post 좋아요 N(user):M(포스트)
  has_many :post_likes 
  has_many :users, through: :post_likes
 
     def avg
         sum = 0
         replies.each do |c|
            sum += c.score 
         end
         
         if replies.count == 0
             0
         else
         sum.to_f / replies.count
         end
     end
end
