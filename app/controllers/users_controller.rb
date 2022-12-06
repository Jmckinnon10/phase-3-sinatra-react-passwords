class UsersController < ApplicationController
  set :default_content_type, 'application/json'

  get "/users" do 
    users = User.all
    users.to_json
  end
  
  get "/users" do 
    users = User.find(params[:id])
    users.to_json
  end
  
end