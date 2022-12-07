require_relative './application_controller'

class AccountsController < ApplicationController
  set :default_content_type, 'application/json'

  get "/accounts" do 
    accounts = Account.all
    accounts.to_json(include: :passwords)
  end
  
  # get "/accounts/:id" do 
  #   accounts = Account.find(params[:id])
  #   accounts.to_json
  # end

  # get "/accounts/:websites" do 
  #   accounts = Account.find(params[:websites])
  #   accounts.to_json
  # end
end