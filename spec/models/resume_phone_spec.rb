require 'rails_helper'

RSpec.describe ResumePhone, type: :model do

  describe "validations" do
    it "is valid with valid attributes" do
      resume_phone = create(:resume_phone)
      expect(resume_phone).to be_valid
    end

    it { should validate_presence_of(:phone_number) }
    it { should validate_presence_of(:resume_info_id) }
    it { should validate_presence_of(:phone_type) }
  end

  describe "associations" do
    it { should belong_to(:resume_info) }
  end

  describe "self.list_types" do
    it "returns array of phone types" do
      expect(ResumePhone.list_types).to eq(["Work", "Personal"])
    end
  end
end
