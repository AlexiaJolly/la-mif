class Idea < ApplicationRecord
  belongs_to :user
  belongs_to :list
  belongs_to :chosen_by, class_name: "User", foreign_key: "chosen_by_id"
  has_many :comments
end
