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
 
    
end
