class User < ActiveRecord::Base
  has_many :writings
  has_many :twitters
  has_many :replies
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
