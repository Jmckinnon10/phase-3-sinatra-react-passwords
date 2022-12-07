class UsersController < ApplicationController
  # set :default_content_type, 'application/json'

  get "/users" do 
    users = User.all
    users.to_json
  end

  get "/users/:name" do 
    users = User.find(params[:name])
    users.to_json
  end
end