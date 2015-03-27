class HousingProjectsController < ApplicationController
  before_action :set_housing_project, only: [:show, :edit, :update, :destroy]

  # GET /housing_projects
  # GET /housing_projects.json
  def index
    @housing_projects = HousingProject.all
  end

  # GET /housing_projects/1
  # GET /housing_projects/1.json
  def show
  end

  # GET /housing_projects/new
  def new
    @housing_project = HousingProject.new
  end

  # GET /housing_projects/1/edit
  def edit
  end

  # POST /housing_projects
  # POST /housing_projects.json
  def create
    @housing_project = HousingProject.new(housing_project_params)

    respond_to do |format|
      if @housing_project.save
        format.html { redirect_to @housing_project, notice: 'Housing project was successfully created.' }
        format.json { render :show, status: :created, location: @housing_project }
      else
        format.html { render :new }
        format.json { render json: @housing_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /housing_projects/1
  # PATCH/PUT /housing_projects/1.json
  def update
    respond_to do |format|
      if @housing_project.update(housing_project_params)
        format.html { redirect_to @housing_project, notice: 'Housing project was successfully updated.' }
        format.json { render :show, status: :ok, location: @housing_project }
      else
        format.html { render :edit }
        format.json { render json: @housing_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /housing_projects/1
  # DELETE /housing_projects/1.json
  def destroy
    @housing_project.destroy
    respond_to do |format|
      format.html { redirect_to housing_projects_url, notice: 'Housing project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housing_project
      @housing_project = HousingProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def housing_project_params
      params.require(:housing_project).permit(:cover_image, :gps_coordinates, :name, :plot_layout_image, :plot_layout_image_dimensions, :state, :subdomain, :summary)
    end
end
