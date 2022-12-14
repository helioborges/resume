class ResumeInfo < ApplicationRecord

  validates_presence_of :name, :description, :about, :looking, :birthday, :picture
  validate :birthday_must_be_a_date

  def birthday_must_be_a_date
    birthday.acts_like?(:date)
  rescue ArgumentError
    errors.add(:birthday, :invalid)
  end

  has_many :resume_emails
  has_many :resume_languages
  has_many :resume_phones
  has_many :resume_social_networks


  accepts_nested_attributes_for :resume_emails, :resume_languages, :resume_phones, :resume_social_networks, allow_destroy: true

end
