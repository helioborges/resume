class ResumePhone < ApplicationRecord

  validates_presence_of :phone_number, :resume_info_id, :phone_type

  def self.list_types
    ['Work', 'Personal']
  end

end
