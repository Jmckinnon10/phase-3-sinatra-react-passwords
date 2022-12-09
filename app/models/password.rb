class Password < ActiveRecord::Base
 has_many :users, dependent: :destroy
 has_many :accounts, through: :users

  
end