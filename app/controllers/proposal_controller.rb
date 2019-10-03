class ProposalController < ApplicationController
  def new
    @proposal = Proposal.new
  end

  def create
    @proposal = Proposal.new(proposal_params)
    if @proposal.save
      redirect_to government_product_proposal_index_path
    else
      render :new
    end
  end

  def index
    @proposals = Product.find(params[:product_id]).proposals
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
      redirect_to government_project_proposal_index_path
    else
      render :edit
    end
  end

  private

  def proposal_params
    params.require(:proposal).permit(:user_id, :project_id, pictures: [])
  end
end
