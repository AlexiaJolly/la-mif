class Event < ApplicationRecord
  belongs_to :user
  has_secure_token
  has_many :lists, dependent: :destroy
  validates :name, presence: true
  validates :date, presence: true
  validates :token, presence: true

end
