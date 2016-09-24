require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it { is_expected.to belong_to(:user) } 
  it { is_expected.to belong_to(:event) } 
  it { is_expected.to belong_to(:skill) } 
  it { is_expected.to belong_to(:reservation_status) } 
  it { is_expected.to have_many(:driven_pairs) } 
  it { is_expected.to have_many(:navigated_pairs) } 
end
