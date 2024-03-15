require "test_helper"

class PlaceTest < ActiveSupport::TestCase
  test 'valid place' do
    place = places(:one)
    assert place.valid?
  end

  test 'invalid without name' do
    place = places(:one)
    place.name = nil
    refute place.valid?, 'place is valid without a name'
    assert_not_nil place.errors[:name], 'no validation error for name present'
  end

  test "should not save place without city" do
    place = Place.new(name: "Some place", address: "some address", place_type: "musuem", description: "some text", rating: 5, api_id: "a1", image_url: "http://example.com/image.jpg")
    assert_not place.valid?, "Place saved without a city"
  end
end
