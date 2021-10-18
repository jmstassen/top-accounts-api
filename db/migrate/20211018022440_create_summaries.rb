class CreateSummaries < ActiveRecord::Migration[6.1]
  def change
    create_table :summaries do |t|
      t.references :accounts, null: false, foreign_key: true
      t.text :summary_content
      t.timestamps
    end
  end
end
