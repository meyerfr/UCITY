class GovernmentController < ApplicationController
  def index
    @government = Government.all
  end

  def show
    @government = Government.find(params[:id])
  end

  def new
    @government = Government.new
  end

  def create
    @government = Government.new(government_params)
    redirect_to government_index_path if @government.save
  end

  def edit
    @government = Government.find(params[:id])
  end

  def update
    @government = Government.find(params[:id])
    redirect_to government_path(@government) if @government.update(government_params)
  end

  def destroy
    @government = Government.find(params[:id])
    if @government.destroy
      redirect_to government_index_path
    else
      render :edit
    end
  end

  private

  def government_params
    params.require(:government).permit(:country)
  end
end
