class ResumePhone < ApplicationRecord

  validates_presence_of :phone_number, :resume_info_id, :type

  def list_types
    ['Work', 'Personal']
  end

end
