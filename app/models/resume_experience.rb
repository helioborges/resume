class ResumeExperience < ApplicationRecord
  belongs_to :resume_info
  validates_presence_of :resume_info_id

  validates_presence_of :year_start, :title, :company

  def clean_url(secure = nil)
    if url.start_with? 'http://' or url.start_with? 'https://'
      url
    else
      secure ? "https://#{url}" : "http://#{url}"
    end
  end

end
