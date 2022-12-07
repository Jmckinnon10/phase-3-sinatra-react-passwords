class PasswordsController < ApplicationController
  set :default_content_type, 'application/json'

  get "/passwords/:password_name" do 
    passwords = Password.find(:password_name)
    passwords.to_json
  end

end

