class PropertiesController < ApplicationController

  def index
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.create(properties_params)
    redirect_to properties_path
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])
      if @property.update_attributes(properties_params)
        flash[:success] = "Property was successfully updated"
        redirect_to @property
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end

  def destroy
    @property = Property.find(params[:id])
    if @property.destroy
      flash[:success] = 'Property was successfully deleted.'
      redirect_to properties_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to properties_path
    end
  end
  
  
  

  private

  def properties_params
    params.require(:property).permit(
    :address,
    :bedrooms,
    :garage
  )
  end

end
