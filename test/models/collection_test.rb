require 'test_helper'

class CollectionTest < ActiveSupport::TestCase
  # test 'should create a new collection' do
  #   collection = Collection.new(name: 'Test', user_id: 1, city_id: 1)
  #   assert collection.valid?
  #   assert collection.save
  # end
  # test 'invalid without collection name' do
  #   collection = Collection.new(user_id: 1, city_id: 1)
  #   collection.name = nil
  #   refute collection.valid?, 'Collection is invalid without name'
  #   assert_includes collection.errors[:name], "Collection name can't be blank"
  # end

  # test "collection can't be created without registered user" do
  #   collection = Collection.new(name: 'Test', city_id: 1)
  #   refute collection.valid?, 'Collection is invalid without user'
  #   assert_equal ['must exist'], collection.errors[:user], 'Expected error msg for missing user'
  # end
  # test "collection can't be created without city" do
  #   collection = Collection.new(name: 'Test', user_id: 1)
  #   refute collection.valid?, 'Collection is invalid without city'
  #   assert_equal ["can't be created without city"], collection.errors[:city]
  # end
end
