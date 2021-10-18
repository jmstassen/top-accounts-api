class CreateInteractionContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :interaction_contacts do |t|
      t.references :interactions, null: false, foreign_key: true
      t.references :contacts, null: false, foreign_key: true
      t.string :role
      t.timestamps
    end
  end
end
