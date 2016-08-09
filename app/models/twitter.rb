class Twitter < ActiveRecord::Base
        has_many :twitter_comment
        belongs_to :user

end
