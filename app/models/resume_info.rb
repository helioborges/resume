class ResumeInfo < ApplicationRecord
  attr_accessor :remove_picture_hidden, :remove_file_cv_hidden

  validates_presence_of :name, :description, :about, :looking, :birthday, :picture
  validate :birthday_must_be_a_date
  validate :picture_format

  has_many :resume_emails
  has_many :resume_languages
  has_many :resume_phones
  has_many :resume_social_networks
  has_many :resume_educations
  has_many :resume_experiences

  has_one_attached :file_cv
  has_one_attached :picture

  accepts_nested_attributes_for :resume_emails, :resume_languages, :resume_phones, :resume_social_networks, :resume_educations, :resume_experiences, allow_destroy: true

  private

  def picture_format
    return unless picture.attached?
    return if picture.blob.content_type.start_with? 'image/'
    picture.purge
    errors.add(:picture, 'needs to be an image')
  end

  def birthday_must_be_a_date
    birthday.acts_like?(:date)
  rescue ArgumentError
    errors.add(:birthday, :invalid)
  end

end
