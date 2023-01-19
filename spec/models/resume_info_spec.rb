require 'rails_helper'

RSpec.describe ResumeInfo, type: :model do

  describe 'validations' do

    it "is valid with valid attributes" do
      resume = build(:resume_info)
      expect(resume).to be_valid
    end

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:about) }
    it { is_expected.to validate_presence_of(:looking) }
    it { is_expected.to validate_presence_of(:birthday) }

    it 'validates birthday as a date' do
      resume = build(:resume_info, birthday: 'not a date')
      expect(resume).to_not be_valid
      expect(resume.birthday).to be_nil

      resume = build(:resume_info)
      expect(resume).to be_valid
      expect(resume.birthday).to_not be_nil
    end

    it 'validates picture format' do
      resume = build(:resume_info)
      resume.picture.attach(io: File.open(Rails.root.join('spec', 'fixtures', 'files', 'test.txt')), filename: 'test.txt', content_type: 'text/plain')
      expect(resume).to_not be_valid
      expect(resume.errors[:picture]).to include('needs to be an image')

      resume.picture.attach(io: File.open(Rails.root.join('spec', 'fixtures', 'files', 'test.png')), filename: 'test.png', content_type: 'image/png')
      expect(resume).to be_valid
    end
  end

  describe 'associations' do
    it { is_expected.to have_many(:resume_emails) }
    it { is_expected.to have_many(:resume_languages) }
    it { is_expected.to have_many(:resume_phones) }
    it { is_expected.to have_many(:resume_social_networks) }
    it { is_expected.to have_many(:resume_educations) }
    it { is_expected.to have_many(:resume_experiences) }
    it { is_expected.to have_many(:resume_skills) }
    it { is_expected.to have_one_attached(:file_cv) }
    it { is_expected.to have_one_attached(:picture) }
  end

  describe "attributes" do
    it { should respond_to :remove_picture_hidden }
    it { should respond_to :remove_file_cv_hidden }
  end

  describe "associations" do
    it { should accept_nested_attributes_for :resume_emails }
    it { should accept_nested_attributes_for :resume_languages }
    it { should accept_nested_attributes_for :resume_phones }
    it { should accept_nested_attributes_for :resume_social_networks }
    it { should accept_nested_attributes_for :resume_educations }
    it { should accept_nested_attributes_for :resume_experiences }
    it { should accept_nested_attributes_for :resume_skills }
  end

end



