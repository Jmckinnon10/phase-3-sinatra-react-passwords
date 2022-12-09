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
    account_password = account.passwords
    puts account_password
    account_password.each {|password| password.destroy}
    account.destroy
    account.to_json
   
  end

  post '/accounts' do
    puts 'post request'
    account = Account.create(
      websites: params[:websites]
    )
    
    password = Password.create(
      password_name: params[:password]
    )

    user = User.create(
      name: params[:username], 
      pin: params[:pin], 
      account_id: account.id,
      password_id: password.id
    )
    

    account.to_json
    password.to_json
    user.to_json
  end
end

