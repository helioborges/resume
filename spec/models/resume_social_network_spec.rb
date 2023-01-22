require 'rails_helper'

RSpec.describe ResumeSocialNetwork, type: :model do

  describe "validations" do
    it "is valid with valid attributes" do
      resume_social_network = create(:resume_social_network)
      expect(resume_social_network).to be_valid
    end

    it { should validate_presence_of(:social_network_id) }
    it { should validate_presence_of(:resume_info_id) }
  end

  describe "associations" do
    it { should belong_to(:social_network) }
    it { should belong_to(:resume_info) }
  end

end
