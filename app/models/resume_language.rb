class ResumeLanguage < ApplicationRecord

  belongs_to :language
  validates_presence_of :language_id, :level, :resume_info_id

end
