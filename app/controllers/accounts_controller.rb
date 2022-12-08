require_relative './application_controller'

class AccountsController < ApplicationController
  set :default_content_type, 'application/json'

  get "/accounts" do 
    accounts = Account.all
    accounts.to_json(only: [:websites, :id], include: { passwords: {
      only: [:password_name, :id], include: {
        users: {only: [:name, :id]}}
    }})
  end

  delete '/accounts/:id' do 
    account = Account.find(params[:id]) 
    account.destroy
    account.to_json
  end

  post '/accounts/:id' do
    account = Account.create(website: wesbite, username: username, password: password)
    binding.pry
  end
end

