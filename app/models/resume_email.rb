class ResumeEmail < ApplicationRecord

  validates_presence_of :email, :resume_info_id, :type

  def list_types
    ['Work', 'Personal']
  end

end
