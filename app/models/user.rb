class User < ActiveRecord::Base
  has_many :passwords
  has_many :accounts, through: :passwords

end