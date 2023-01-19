class ResumeLanguage < ApplicationRecord

  belongs_to :language
  belongs_to :resume_info

  validates_presence_of :language_id, :level, :resume_info_id
  validates_numericality_of :level

end
