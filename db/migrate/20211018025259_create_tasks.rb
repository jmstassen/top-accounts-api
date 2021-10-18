class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.references :accounts, null: false, foreign_key: true
      t.text :task_description
      t.date :due_date
      t.string :task_status
      t.timestamps
    end
  end
end
