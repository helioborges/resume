class UsersController < ApplicationController
  before_action :check_admin

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

end
