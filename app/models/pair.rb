class Pair < ApplicationRecord
  belongs_to :event
  belongs_to :driver, class_name: 'Reservation', foreign_key: 'person_1'
  belongs_to :navigator, class_name: 'Reservation', foreign_key: 'person_2'
end
