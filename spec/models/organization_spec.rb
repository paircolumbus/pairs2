require "rails_helper"

RSpec.describe Organization, type: :model do
  it { is_expected.to belong_to(:admin) }
  it { is_expected.to have_many(:events) }
end
