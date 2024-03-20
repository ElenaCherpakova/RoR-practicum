require 'rails_helper'

RSpec.describe Collection, type: :model do
  describe 'creating' do
    before(:each) do
      @user = FactoryBot.create(:user)
      @city = FactoryBot.create(:city)
    end

    after(:each) do
      @user.destroy
      @city.destroy
    end

    describe 'collection validations' do
      it 'is not valid without a name' do
        expect do
          FactoryBot.create(:collection, name: nil)
        end.to raise_error(ActiveRecord::RecordInvalid, /Name can't be blank/)
      end
    end
    describe 'associations' do
      it 'creates a collection associated with the current user' do
        collection = FactoryBot.create(:collection, name: 'Example Collection')
        collection.user = @user
        expect(collection).to be_valid
        expect(collection.user).to eq(@user)
      end
      it 'creates a collection associated with city' do
        collection = FactoryBot.create(:collection, name: 'Example Collection')
        collection.city = @city
        expect(collection).to be_valid
        expect(collection.city).to eq(@city)
      end
    end
  end
end
