require 'rails_helper'

<<<<<<< HEAD
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
=======
RSpec.describe User, type: :model do
  it 'is database authenticable' do
    user = User.create(
      email: 'test@example',
      password: 'a7&43Wcxy6ij'
    )
    expect(user.valid_password?('a7&43Wcxy6ij')).to be_truthy
>>>>>>> 5de7128933a8639d282082d93864ca01428abb57
  end
end
