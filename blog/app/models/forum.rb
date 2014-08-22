class Forum < ActiveRecord::Base
    has_many :categories
    has_many :topics, through: :categories

end
