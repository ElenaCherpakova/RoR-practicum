require 'rails_helper'

RSpec.describe City, type: :model do
  subject { FactoryBot.build(:city) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  describe "associations" do
    it 'should have many places' do
      should respond_to(:places)
    end
  end
end