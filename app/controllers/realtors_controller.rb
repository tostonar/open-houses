class RealtorsController < ApplicationController
  def index
    @realtors = Realtor.all
  end

  def show
    @realtor = Realtor.find(params[:id])
  end

  def new
    @realtor = Realtor.new
  end

  def create
    @realtor = Realtor.create(realtor_params)
    redirect_to realtor_path(@realtor)
  end

  def edit
    @realtor = Realtor.find(params[:id])
  end

  def update
    @realtor = Realtor.find(params[:id])
    @realtor.update(realtor_params)
    redirect_to realtor_path(@realtor)
  end

  private
  def realtor_params
    params.require(:realtor).permit(:name, :brokerage, :years_experience)
  end
  
  
end
