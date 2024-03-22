class Place < ApplicationRecord
  belongs_to :city

  validates :name, :address, :place_type, :description, :image_url, :city_id, presence: true

  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
