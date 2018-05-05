require 'rails_helper'

describe User do

  let(:attributes) do
    {
      username: "Sammie James Jr.",
      password: "sammieme",
      password_confirmation: "sammieme"
    }
  end

  it "is considered valid" do
    expect(create(:user)).to be_valid
  end

   let(:missing_username) { attributes.except(:username) }
   let(:too_long_username) { attributes.merge(username: "this_name_is_way_too_long_but_you_know_it_is_good_to_test_these-things") }

   it "is invalid without a name" do
     expect(User.new(missing_username)).not_to be_valid
   end

   it "is invalid with a name that is too long" do
     expect(User.new(too_long_username)).not_to be_valid
   end

   let(:too_short_password) { attributes.merge(password: "test", password_confirmation: "test") }
   let(:wrong_confirmation) { attributes.merge(password_confirmation: "sammiemee") }

   it "is invalid with a password that is too short" do
     expect(User.new(too_short_password)).not_to be_valid
   end

   it "is invalid with a password confirmation that does not match" do
     expect(User.new(wrong_confirmation)).not_to be_valid
   end

end
