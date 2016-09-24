class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to :skill
  belongs_to :reservation_status
  has_many :driven_pairs, class_name: 'Pair', foreign_key: 'person_1'
  has_many :navigated_pairs, class_name: 'Pair', foreign_key: 'person_2'

  def pairs
    driven_pairs + navigated_pairs
  end
end
