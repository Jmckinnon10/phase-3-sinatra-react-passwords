class CreatePasswords < ActiveRecord::Migration[6.1]
  def change
    create_table :passwords do |t|
      t.string :password_name
      t.timestamps
    end
  end
end