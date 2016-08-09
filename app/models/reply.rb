class Reply < ActiveRecord::Base
    belongs_to :writing
    belongs_to :user
end
