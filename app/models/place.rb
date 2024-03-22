class Place < ApplicationRecord
  belongs_to :city
  validates :name, :address, :place_type, :description, :rating, :image_url, :city_id, presence: true
end
