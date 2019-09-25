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
    @property = Property.create(
      address: params[:address],
      bedrooms: params[:bedrooms],
      garage: params[:garage]
    )
    redirect_to properties_path(@property)
  end

end
