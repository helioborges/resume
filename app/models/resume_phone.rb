class ResumePhone < ApplicationRecord

  belongs_to :resume_info
  validates_presence_of :phone_number, :resume_info_id, :phone_type

  def self.list_types
    ['Work', 'Personal']
  end

end
