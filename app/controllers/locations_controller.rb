class LocationsController < ApplicationController

  def index
    @locations = Location.all
    render :index
  end


  def create
    @location = Location.create(
      city: params[:city],
      state: params[:state],
    )
    render :show
  end

end
