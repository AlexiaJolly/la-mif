class List < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :ideas, dependent: :destroy
end
