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
end
