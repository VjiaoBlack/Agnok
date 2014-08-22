class Topic < ActiveRecord::Base
    belongs_to :category

    has_many :discussions
    has_many :comments, through: :discussions


end
