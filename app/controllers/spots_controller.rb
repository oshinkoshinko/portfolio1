class SpotsController < ApplicationController

  def create
    @spot = Spot.new(spot_params)
    @spot.save
    redirect_to spot_index_path

  end

  private

  def spot_params
    params.require(:spot).permit(:address, :latitude, :longitude)
  end

end
