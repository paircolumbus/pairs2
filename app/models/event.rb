class Event < ApplicationRecord
  belongs_to :organization
  has_many :reservations
  has_many :pairs
end
