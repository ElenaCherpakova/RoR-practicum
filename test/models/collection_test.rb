require 'test_helper'

class CollectionTest < ActiveSupport::TestCase
  test 'should create a new collection' do
    collection = Collection.new(name: 'Test', user_id: 1, city_id: 1)
    assert collection.valid?
    assert collection.save
  end
end
