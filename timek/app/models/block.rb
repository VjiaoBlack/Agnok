class Block < ActiveRecord::Base
  belongs_to :schedule
  has_one :user, through => :schedule
  belongs_to_many :circles
end
