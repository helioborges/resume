class ResumeSkill < ApplicationRecord

  belongs_to :resume_info
  validates_presence_of :resume_info_id

  validates_presence_of :name, :level
  validates :level, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }

end
