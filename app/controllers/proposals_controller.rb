class ProposalsController < ApplicationController
  def new
    @government = Government.find(params[:government_id])
    @project = Project.find(params[:project_id])
    @proposal = Proposal.new(project_id: @project.id)
  end

  def create
    @government = Government.find(params[:government_id])
    @project = Project.find(params[:project_id])
    @proposal = Proposal.new(proposal_params)
    @proposal.project_id = @project.id
    if @proposal.save!
      redirect_to government_project_proposals_path(@government, @project)
    else
      render :new
    end
  end

  def index
    @government = Government.find(params[:government_id])
    @project = Project.find(params[:project_id])
    @proposals = Proposal.all.where(project_id: @project.id)
  end

  def show
    @proposal = Proposal.find(params[:id])
  end

  def edit
    @proposal = Proposal.find(params[:id])
  end

  def update
    @proposal = Proposal.find(params[:id])
    government = Government.find(params[:government_id])
    project = Project.find(params[:project_id])
    redirect_to government_project_proposal_path(government, project, @proposal) if @proposal.update(proposal_params)
  end

  def destroy
    @proposal = Proposal.find(params[:id])
    if @proposal.destroy
      redirect_to government_project_proposals_path
    else
      render :edit
    end
  end

  private

  def proposal_params
    params.require(:proposal).permit(:project_id, :name, :architect, :pos, :start, :end, pictures: [])
  end
end
