require 'rails_helper'

RSpec.describe ResumeEducation, type: :model do

  describe "validations" do
    it "is valid with valid attributes" do
      resume_education = create(:resume_education)
      expect(resume_education).to be_valid
    end

    it { should validate_presence_of(:resume_info_id) }
    it { should validate_presence_of(:year_start) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:institution) }
  end

  describe "associations" do
    it { should belong_to(:resume_info) }
  end

  describe "#clean_url" do
    let(:resume_education) { FactoryBot.create(:resume_education, url: "example.com") }

    it "returns the url with http if it does not start with http or https" do
      expect(resume_education.clean_url).to eq("http://example.com")
    end

    it "returns the url if it starts with http or https" do
      resume_education.url = "https://example.com"
      expect(resume_education.clean_url).to eq("https://example.com")
    end

    it "returns the url with https if passed in secure argument as true" do
      expect(resume_education.clean_url(secure: true)).to eq("https://example.com")
    end

  end
end
