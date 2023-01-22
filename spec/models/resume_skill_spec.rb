require 'rails_helper'

RSpec.describe ResumeSkill, type: :model do

  describe "validations" do
    it "is valid with valid attributes" do
      resume_skill = create(:resume_skill)
      expect(resume_skill).to be_valid
    end

    it { should validate_presence_of(:resume_info_id) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:level) }
    it { should validate_numericality_of(:level).is_greater_than_or_equal_to(0).is_less_than_or_equal_to(100) }
  end

  describe "associations" do
    it { should belong_to(:resume_info) }
  end

end
