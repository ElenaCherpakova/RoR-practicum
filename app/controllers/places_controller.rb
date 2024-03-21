class PlacesController < ApplicationController
  #this method is not final. It only sets an example on how to call api using the Faraday gem
  def index
    response = Faraday.get("https://api.geoapify.com/v2/places?categories=commercial.shopping_mall&filter=place:51ed56e07547c754c059a9b64027292a4040f00101f901a578020000000000c0020a&limit=10&apiKey=")
  end

  
  private
    def place_params
      params.require(:place).permit(:name, :address, :place_type, :description, :rating, :api_id, :image_url, :city_id)
    end
end
