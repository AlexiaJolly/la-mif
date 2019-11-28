class Event < ApplicationRecord
  belongs_to :user
  has_secure_token
  has_many :lists, dependent: :destroy
  accepts_nested_attributes_for :lists
  validates :name, presence: true
  validates :date, presence: true
end
