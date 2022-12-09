require 'pry'
class Account < ActiveRecord::Base
  has_many :users 
  has_many :passwords, through: :users


  # def delete_account
  #   self.passwords.destroy_all
  #   self.users.destroy_all
  # end



end