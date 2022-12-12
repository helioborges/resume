class ResumeInfo < ApplicationRecord

  validates_presence_of :name, :description, :about, :looking, :birthday, :picture
  validate :birthday_must_be_a_date

  def birthday_must_be_a_date
    birthday_before_type_cast.to_date
  rescue ArgumentError
    errors.add(:birthday, :invalid)
  end

end
