class User < ActiveRecord::Base
  has_many :writings
  has_many :twitters
  has_many :replies
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
# post 좋아요 N(user):M(포스트)
  has_many :post_likes 
  has_many :writings, through: :post_likes
end
