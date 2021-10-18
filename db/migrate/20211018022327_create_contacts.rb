class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.references :accounts, null: false, foreign_key: true
      t.string :contact_name
      t.string :title
      t.string :photo_url
      t.string :email
      t.string :phone
      t.timestamps
    end
  end
end
