class Writing < ActiveRecord::Base
    belongs_to :user
    has_many :replies
    belongs_to :posts
    belongs_to :americas
    belongs_to :europes
    belongs_to :africa
end
