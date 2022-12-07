require_relative './application_controller'

class AccountsController < ApplicationController
  set :default_content_type, 'application/json'

  get "/accounts" do 
    accounts = Account.all
    account.to_json
  end



  get "/accounts/:websites" do 
    accounts = Account.find(params[:websites])
    accounts.to_json
  end

end