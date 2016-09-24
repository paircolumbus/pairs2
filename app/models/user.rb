class User < ApplicationRecord
  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  attr_accessor :login

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:login]

  validates :username,
    :presence => true,
    :uniqueness => {
      :case_sensitive => false
    }
  # Checks to ensure that a username cannot be set that might match an existing email.
  validate :validate_username
  validates_presence_of :first_name, :last_name, :username

  has_many :organizations, foreign_key: 'admin_id'
  has_many :reservations
  has_many :events, through: :reservations
  has_many :skills, through: :reservations
  has_many :driven_pairs, through: :reservations
  has_many :navigated_pairs, through: :reservations
  delegate :pairs, to: :reservation

  SKILL_LEVELS = %w(Beginner Intermediate Advanced)

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_hash).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:username) || conditions.has_key?(:email)
      conditions[:email].downcase! if conditions[:email]
      where(conditions.to_hash).first
    end
  end

  private

  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end
end
