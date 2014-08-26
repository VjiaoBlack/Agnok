class Comment < ActiveRecord::Base
    belongs_to :discussion
    has_one :user

    attr_accessible :body

end
