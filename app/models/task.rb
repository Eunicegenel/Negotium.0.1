class Task < ApplicationRecord
  validates :task_name, presence: true
  validates :user_id, presence: true
  validates :cat_id, presence: true
  validates :due_date, presence: true
  validates :complete, presence: true
end
