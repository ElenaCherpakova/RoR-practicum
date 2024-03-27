class PlacesController < ApplicationController
  # Implement the search action
  def search
    key = "%#{params[:key]}%"
    @places = Place.where("name LIKE ?", key)
  end
  
  private
    def place_params
      params.require(:place).permit(:name, :address, :place_type, :description, :rating, :image_url, :city_id)
    end
end
