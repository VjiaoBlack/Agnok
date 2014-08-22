class User < ActiveRecord::Base
    has_many :comments

  has_secure_password

  validates_uniqueness_of :email

  attr_accessible :name, :email, :password, :password_confirmation

end
