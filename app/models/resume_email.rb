class ResumeEmail < ApplicationRecord

  validates_presence_of :email, :resume_info_id, :email_type

  validates :email, format: { with: Devise.email_regexp }

  def self.list_types
    ['Work', 'Personal']
  end

end
