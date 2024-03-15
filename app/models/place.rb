class Place < ApplicationRecord
  belongs_to :city
  validates :name, :address, :place_type, :description, :rating, :api_id, :image_url, :city_id, presence: true
end
