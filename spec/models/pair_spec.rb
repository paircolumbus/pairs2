require "rails_helper"

RSpec.describe Pair, type: :model do
  it { is_expected.to belong_to(:event) }
  it { is_expected.to belong_to(:driver) }
  it { is_expected.to belong_to(:navigator) }
end
