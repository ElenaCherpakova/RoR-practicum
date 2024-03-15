class PlacesController < ApplicationController
    private
    def place_params
      params.require(:place).permit(:name, :address, :place_type, :description, :rating, :api_id, :image_url, :city_id)
    end
end