class User < ActiveRecord::Base
  has_secure_password

  validates_uniqueness_of :email


  has_many :schedules
  has_many :circles
  has_many :blocks, :through => :schedules
  has_many :users, :through => :circles
end
