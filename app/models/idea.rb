class Idea < ApplicationRecord
  belongs_to :user
  belongs_to :list
  belongs_to :chosen_by, optional: true, class_name: "User", foreign_key: "chosen_by_id"
  has_many :comments, dependent: :destroy
  has_one_attached :photo
end
