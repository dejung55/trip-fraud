class Writing < ActiveRecord::Base
    belongs_to :user
    has_many :replies
    belongs_to :posts
    belongs_to :americas
    belongs_to :europes
    belongs_to :africa
 
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
