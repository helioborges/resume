class ResumeSkill < ApplicationRecord

  belongs_to :resume_info
  validates_presence_of :resume_info_id

  validates_presence_of :name, :level
  validates :level, numericality: { in: 0..100 }

end
