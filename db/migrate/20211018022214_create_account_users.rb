class CreateAccountUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :account_users do |t|
      t.references :users, null: false, foreign_key: true
      t.references :accounts, null: false, foreign_key: true
      t.integer :permissions
      t.timestamps
    end
  end
end
