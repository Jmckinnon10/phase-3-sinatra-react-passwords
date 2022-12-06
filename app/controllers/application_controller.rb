class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/account" do 
    account = Account.all
    account.to_json
  end

  # get "/user" do 
  #   user = User.all
  #   user.to_json
  # end

  # get "/password" do 
  #   password = Password.all
  #   password.to_json
  # end

end
