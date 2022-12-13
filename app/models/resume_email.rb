class ResumeEmail < ApplicationRecord

  validates_presence_of :email, :resume_info_id, :email_type

  def list_types
    ['Work', 'Personal']
  end

end
