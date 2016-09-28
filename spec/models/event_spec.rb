require "rails_helper"

RSpec.describe Event, type: :model do
  it { is_expected.to belong_to(:organization) }
  it { is_expected.to have_many(:reservations) }
  it { is_expected.to have_many(:pairs) }
end
