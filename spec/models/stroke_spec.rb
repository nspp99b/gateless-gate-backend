require 'rails_helper'

describe Stroke do

  let (:attributes) do
    { sound: 5,
      user_id: 1,
      performance_id: 1
    }
  end

  it "is considered valid" do
    expect(create(:stroke)).to be_valid
  end

  it "is invalid if sound is outside the acceptable range" do
    expect(Stroke.new(attributes)).not_to be_valid
  end

end
