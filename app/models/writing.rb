class Writing < ActiveRecord::Base
    has_many :replies
    belongs_to :posts
    belongs_to :americas
    belongs_to :europes
    belongs_to :africa
end
