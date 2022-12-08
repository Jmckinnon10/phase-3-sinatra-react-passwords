class Account < ActiveRecord::Base
  has_many :users
  has_many :passwords, through: :users

end