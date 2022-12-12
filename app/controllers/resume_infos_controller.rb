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

  # PATCH/PUT /resume_infos/1 or /resume_infos/1.json
  def update
    respond_to do |format|
      if @resume_info.update(resume_info_params)
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
    end

    # Only allow a list of trusted parameters through.
    def resume_info_params
      params.require(:resume_info).permit(:name, :description, :about, :looking, :birthday, :picture)
    end
end
