class Comment < ActiveRecord::Base
    belongs_to :discussion
    has_one :user
end
