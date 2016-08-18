require_relative "../../lib/pairing_helper.rb"

describe PairingHelper do

  let(:user1) { instance_double("User", skill: 2) }
  let(:user2) { instance_double("User", skill: 1) }
  let(:user3) { instance_double("User", skill: 3) }
  let(:users) { [user1, user2] }

  describe "#random_pair" do
    subject { PairingHelper.new(users).random_pair }

    context "with two users" do
      xit "pairs users up" do
        expect(subject[:paired].size).to eq 1
        expect(subject[:paired].first).to match_array([user1, user2])
        expect(subject[:unpaired]).to be_empty
      end
    end

    context "with more than two users" do
      let(:users) { [user1, user2, user3] }
      xit "pairs users up randomly" do
        expect(subject[:paired].size).to eq 1
        expect(subject[:paired].first.first).to be_a User
        expect(subject[:paired].first.last).to be_a User
        expect(subject[:unpaired].size).to 1
        expect(subject[:unpaired]).to be_a User
      end
    end

    context "with one or less users" do
      let(:users) { [user1] }
      xit "no pairs are made" do
        expect(subject[:paired].size).to eq 0
        expect(subject[:unpaired].size).to 1
      end
    end
  end
end
