class ProjectController < ApplicationController
  def index
    @projects = Government.find(params[:government_id]).projects
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to government_project_index_path
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    government = Government.find(@project.government_id)
    redirect_to government_project_path(government, @project) if @government.update(government_params)
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      redirect_to government_project_index_path
    else
      render :edit
    end
  end

  private

  def project_params
    params.require(:project).permit(:government_id, :street, :city, :postalcode)
  end
end
