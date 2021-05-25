class Category < ApplicationRecord
  validates :cat_name, presence: true
  validates :user_id, presence: true
end
