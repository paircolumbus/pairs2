require 'rails_helper'

RSpec.describe User, type: :model do

  xit "has a valid factory"
  xit "is invalid without a first name"
  xit "is invalid without a last name"

  it "is invalid without a username" do
    expect(FactoryGirl.build(:user, username: nil)).to_not be_valid
  end

  it "is invalid without an email" do
    expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
  end
end
