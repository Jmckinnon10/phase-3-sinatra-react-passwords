class User < ActiveRecord::Base
  belongs_to :password
  belongs_to :account

end