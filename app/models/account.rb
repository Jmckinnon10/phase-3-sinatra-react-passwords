class Account < ActiveRecord::Base
  has_many :passwords
  has_many :users, through: :passwords

end