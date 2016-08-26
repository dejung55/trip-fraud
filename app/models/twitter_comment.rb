class TwitterComment < ActiveRecord::Base
        belongs_to :twitter
                belongs_to :user

end
