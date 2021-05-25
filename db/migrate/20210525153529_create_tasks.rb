class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string "task_name"
      t.integer "user_id"
      t.integer "cat_id"
      t.text "task_details"
      t.datetime "due_date"
      t.boolean "complete"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  end
end
