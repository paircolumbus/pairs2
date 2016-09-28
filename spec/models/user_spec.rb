require 'rails_helper'

RSpec.describe User, type: :model do

  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  it "is invalid without a first name" do
    expect(FactoryGirl.build(:user, first_name: nil)).to_not be_valid
  end

  it "is invalid without a last name" do
    expect(FactoryGirl.build(:user, last_name: nil)).to_not be_valid
  end

  it "is invalid without a username" do
    expect(FactoryGirl.build(:user, username: nil)).to_not be_valid
  end

  it "is invalid without an email" do
    expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
  end

  it { is_expected.to have_many(:organizations) } 
  it { is_expected.to have_many(:reservations) } 
  it { is_expected.to have_many(:events) } 
  it { is_expected.to have_many(:driven_pairs) } 
  it { is_expected.to have_many(:navigated_pairs) } 
  it { is_expected.to have_many(:skills) } 
end
