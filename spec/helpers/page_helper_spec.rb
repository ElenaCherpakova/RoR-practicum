require 'rails_helper'

module PageHelper
  def render_place_details(place)
    "#{place[:name]} 
    (#{place[:place_type]}): 
    #{place[:description]} 
    (Rating: #{place[:rating]})"
  end
end