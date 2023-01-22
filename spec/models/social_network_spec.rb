require 'rails_helper'

RSpec.describe SocialNetwork, type: :model do

  describe "validations" do
    it "is valid with valid attributes" do
      social_network = build(:social_network)
      expect(social_network).to be_valid
    end

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:icon) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_uniqueness_of(:icon) }
  end

end
