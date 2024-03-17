class Collection < ApplicationRecord
  belongs_to :user
  belongs_to :city
  validates :name, :user_id, :city_id, presence: true
end
