class HomeController < ApplicationController
  layout 'application'

  def index
    @contact ||= ContactMessage.new
  end

end
