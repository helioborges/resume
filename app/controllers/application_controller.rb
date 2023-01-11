class ApplicationController < ActionController::Base
  layout 'admin'
  before_action :resume_info

  def resume_info
    @resume_info = ResumeInfo.first
  end

  def check_admin
    redirect_to root_url unless current_user and current_user.admin?
  end

end
