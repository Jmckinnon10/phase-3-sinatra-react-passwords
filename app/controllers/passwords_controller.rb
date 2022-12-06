class PasswordsController < ApplicationController
  set :default_content_type, 'application/json'

  get "/passwords" do 
    passwords = Password.all
    passwords.to_json
  end

end

