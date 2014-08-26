class Discussion < ActiveRecord::Base
    belongs_to :topic

    has_many :comments
    has_many :users, through: :comment

    attr_accessible :name, :description

end
