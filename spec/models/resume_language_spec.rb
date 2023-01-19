require 'rails_helper'

RSpec.describe ResumeLanguage, type: :model do

  it "is valid with valid attributes" do
    resume_language = create(:resume_language)
    expect(resume_language).to be_valid
  end

  describe 'associations' do
    it { is_expected.to belong_to(:resume_info) }
    it { is_expected.to belong_to(:language) }
  end

  describe "validations" do
    it { should validate_presence_of(:language_id) }
    it { should validate_presence_of(:level) }
    it { should validate_presence_of(:resume_info_id) }
    it { should validate_numericality_of(:level) }
  end
end