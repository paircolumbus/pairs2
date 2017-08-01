require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it { is_expected.to belong_to(:user) } 
  it { is_expected.to belong_to(:event) } 
  it { is_expected.to belong_to(:skill) } 
  it { is_expected.to belong_to(:reservation_status) } 
  it { is_expected.to have_many(:driven_pairs) } 
  it { is_expected.to have_many(:navigated_pairs) } 

  describe('#pairs') do
    let(:pair) { FactoryGirl.create :pair }
    let(:user) { FactoryGirl.create :user }
    let(:skill) { FactoryGirl.create :skill }
    let(:organization) do 
      FactoryGirl.create :organization,
        admin: user
    end
    let(:event) do 
      FactoryGirl.create :event, 
        organization: organization,
        organizer_id: user.id
    end

    let(:reservation_status) { FactoryGirl.create :reservation_status }

    let(:reservation) do
      FactoryGirl.create :reservation, 
        user: user,
        skill: skill,
        event: event,
        reservation_status: reservation_status
    end

    it('returns the respective driven and navigated paris') do
      expect(reservation.pairs.length).to equal 0
    end
  end
end
