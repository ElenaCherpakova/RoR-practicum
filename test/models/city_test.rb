require "test_helper"

class CityTest < ActiveSupport::TestCase
  test 'valid city' do
    city = cities(:one)
    assert city.valid?
  end

  test 'invalid without name' do
    city = City.new
    refute city.valid?, 'city is valid without a name'
    assert_not_nil city.errors[:name], 'no validation error for name present'
  end
end
