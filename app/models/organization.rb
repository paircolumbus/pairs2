class Organization < ActiveRecord::Base
  belongs_to :admin, class_name: User
  has_many :events
end
