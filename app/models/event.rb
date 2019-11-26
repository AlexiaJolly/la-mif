class Event < ApplicationRecord
  belongs_to :user
  has_secure_token
  validates :name, presence: true
  validates :date, presence: true
  validates :token, presence: true
end
