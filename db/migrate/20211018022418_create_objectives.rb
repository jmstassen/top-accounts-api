class CreateObjectives < ActiveRecord::Migration[6.1]
  def change
    create_table :objectives do |t|
      t.references :accounts, null: false, foreign_key: true
      t.text :description
      t.string :objective_status
      t.timestamps
    end
  end
end
