class Password < ActiveRecord::Base
 has_many :users
 has_many :accounts, through: :users


 
end