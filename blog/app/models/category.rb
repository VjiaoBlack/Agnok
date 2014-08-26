class Category < ActiveRecord::Base
    belongs_to :forum

    has_many :topics
    has_many :discussions, through: :topics

    attr_accessible :name, :description

end
