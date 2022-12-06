class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :pin
      t.belongs_to :account
      t.belongs_to :password
    end
  end
end