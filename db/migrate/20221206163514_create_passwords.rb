class CreatePasswords < ActiveRecord::Migration[6.1]
  def change
    create_table :passwords do |t|
      t.belongs_to :account
      t.belongs_to :user
      t.timestamps
    end
  end
end
