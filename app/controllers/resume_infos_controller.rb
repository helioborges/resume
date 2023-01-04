class ResumeInfosController < ApplicationController
  before_action :set_resume_info, only: %i[ show edit update destroy ]

  # GET /resume_infos or /resume_infos.json
  def index
    @resume_infos = ResumeInfo.all
  end

  # GET /resume_infos/1 or /resume_infos/1.json
  def show
  end

  # GET /resume_infos/new
  def new
    @resume_info = ResumeInfo.new
  end

  # GET /resume_infos/1/edit
  def edit
  end

  # POST /resume_infos or /resume_infos.json
  def create
    @resume_info = ResumeInfo.new(resume_info_params)
    respond_to do |format|
      if @resume_info.save
        format.html { redirect_to resume_info_url(@resume_info), notice: "Resume info was successfully created." }
        format.json { render :show, status: :created, location: @resume_info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @resume_info.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete_resume_info_form_attachments(resume_info_params)
    if resume_info_params["picture"].blank? and @resume_info&.picture&.attached? and resume_info_params["remove_picture_hidden"] == 'true'
      @resume_info&.picture.purge_later
    end
    if resume_info_params["file_cv"].blank? and @resume_info&.file_cv&.attached? and resume_info_params["remove_file_cv_hidden"] == 'true'
      @resume_info&.file_cv.purge_later
    end
  end

  # PATCH/PUT /resume_infos/1 or /resume_infos/1.json
  def update
    respond_to do |format|
      if @resume_info.update(resume_info_params)
        delete_resume_info_form_attachments(resume_info_params)
        format.html { redirect_to resume_info_url(@resume_info), notice: "Resume info was successfully updated." }
        format.json { render :show, status: :ok, location: @resume_info }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @resume_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resume_infos/1 or /resume_infos/1.json
  def destroy
    @resume_info.destroy

    respond_to do |format|
      format.html { redirect_to resume_infos_url, notice: "Resume info was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_resume_info
    @resume_info = ResumeInfo.find(params[:id])
    @social_networks = SocialNetwork.all
  end

  # Only allow a list of trusted parameters through.
  def resume_info_params
    params.require(:resume_info).permit(:name, :description, :about, :looking, :birthday, :picture, :location, :timezone, :file_cv, :remove_picture_hidden, :remove_file_cv_hidden,
                                        resume_educations_attributes: [:id, :year_start, :year_end, :title, :institution, :description, :url, :show, :resume_info_id, :_destroy],
                                        resume_experiences_attributes: [:id, :year_start, :year_end, :title, :company, :description, :url, :show, :resume_info_id, :_destroy],
                                        resume_skills_attributes: [:id, :name, :level, :description, :show, :resume_info_id, :_destroy],
                                        resume_emails_attributes: [:id, :email, :show, :email_type, :resume_info_id, :_destroy],
                                        resume_languages_attributes: [:id, :language_id, :level, :resume_info_id, :_destroy],
                                        resume_phones_attributes: [:id, :phone_number, :show, :phone_type, :whatsapp, :resume_info_id, :_destroy],
                                        resume_social_networks_attributes: [:id, :url, :show, :social_network_id, :resume_info_id, :_destroy])
  end
end
