class Account < ActiveRecord::Base
  has_many :users
  has_many :passwords, through: :users

  def self.map_websites
    Account.all.map {|website| website.websites}
  end
end