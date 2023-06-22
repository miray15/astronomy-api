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

  def destroy
    @location = Location.find_by(id: params[:id])
    @location.destroy
    render json: { message: "Location has been destroyed" }
  end

end
