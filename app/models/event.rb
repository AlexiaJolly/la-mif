class Event < ApplicationRecord
  belongs_to :user
  has_secure_token
  has_many :lists, dependent: :destroy
end
