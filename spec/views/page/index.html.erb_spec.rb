require 'rails_helper'

RSpec.describe "page/index.html.erb", type: :view do
  let(:place) do
    # Create a sample place object with the required attributes
    {
      name: 'Sample Place',
      place_type: 'Restaurant',
      description: 'A cozy spot for food lovers',
      rating: 4.5
    }
  end

  before do
    assign(:places, [place]) # Assign the place to the view
    render # Render the view
  end
end
