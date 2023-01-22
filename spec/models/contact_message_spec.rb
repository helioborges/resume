require 'rails_helper'

RSpec.describe ContactMessage, type: :model do

  describe "validations" do
    it "is valid with valid attributes" do
      contact_message = build(:contact_message)
      expect(contact_message).to be_valid
    end

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:message) }
    it { should validate_presence_of(:email) }
    it { should allow_value("example@example.com").for(:email) }
    it { should_not allow_value("example.com").for(:email) }
  end

end
