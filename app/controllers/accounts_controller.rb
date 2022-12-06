class AccountsController < ApplicationController
  set :default_content_type, 'application/json'

  get "/accounts" do 
    accounts = Account.all
    account.to_json
  end

  get "/accounts/:id" do 
    accounts = Account.find(params[:id])
    accounts.to_json
  end

end