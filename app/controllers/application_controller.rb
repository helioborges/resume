class ApplicationController < ActionController::Base
  layout 'admin'


  before_action :resume_info

  def resume_info
    @resume_info = ResumeInfo.first
  end

end
