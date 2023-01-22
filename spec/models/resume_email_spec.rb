require 'rails_helper'

RSpec.describe ResumeEmail, type: :model do

  describe "validations" do
    it "is valid with valid attributes" do
      resume_email = create(:resume_email)
      expect(resume_email).to be_valid
    end

    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:resume_info_id) }
    it { should validate_presence_of(:email_type) }
    it { should allow_value("example@example.com").for(:email) }
    it { should_not allow_value("example.com").for(:email) }
  end

  describe "associations" do
    it { should belong_to(:resume_info) }
  end

  describe "self.list_types" do
    it "returns array of email types" do
      expect(ResumeEmail.list_types).to eq(["Work", "Personal"])
    end
  end

end
