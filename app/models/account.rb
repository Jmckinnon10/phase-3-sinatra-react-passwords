require 'pry'
class Account < ActiveRecord::Base
  has_many :users, dependent: :destroy
  has_many :passwords, through: :users


  def delete_account
    self.passwords.destroy
  end



end