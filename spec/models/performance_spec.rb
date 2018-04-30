require 'rails_helper'

describe Performance do
  let(:attributes) do
    { name: "The Soldiers" }
  end

  it "is considered valid" do
    expect(Performance.new(attributes)).to be_valid
  end

   let(:missing_name) { attributes.except(:name) }

   it "is invalid without a name" do
     expect(Performance.new(missing_name)).not_to be_valid
   end

   let(:name_too_short) { attributes.merge(name: "A") }

   it "is invalid with a name that is too short" do
     expect(Performance.new(name_too_short)).not_to be_valid
   end

   let(:name_too_long) { attributes.merge(name: "Try hard, get barred Get back, write braille Get jailed, jump bail Join the army, if you fail Look out kid You're gonna get hit But losers, cheaters Six-time users Hang around the theaters Girl by the whirlpool Lookin' for a new fool Don't follow leaders, watch the parkin' meters") }

   it "is invalid with a name that is too long" do
     expect(Performance.new(name_too_long)).not_to be_valid
   end

end
