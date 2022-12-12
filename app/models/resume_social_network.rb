class ResumeSocialNetwork < ApplicationRecord

  belongs_to :social_network
  validates_presence_of :social_network_id, :resume_info_id

end
