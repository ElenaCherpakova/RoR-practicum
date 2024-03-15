class Collection < ApplicationRecord
  belongs_to :user
  validates :name, :user_id, :city_id, presence: true
end
