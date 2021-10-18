class CreateInteractions < ActiveRecord::Migration[6.1]
  def change
    create_table :interactions do |t|
      t.references :accounts, null: false, foreign_key: true
      t.date :date
      t.text :interaction_summary
      t.timestamps
    end
  end
end
