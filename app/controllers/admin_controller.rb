class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin

  def dashboard
  end

end
