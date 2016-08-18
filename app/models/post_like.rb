class PostLike < ActiveRecord::Base
    
  belongs_to :writing
  belongs_to :user
end
