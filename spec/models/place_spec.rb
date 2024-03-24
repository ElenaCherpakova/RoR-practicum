require 'rails_helper'

RSpec.describe Place, type: :model do
  subject { FactoryBot.build(:place) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an address' do
    subject.address = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a place_type' do
    subject.place_type = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a rating' do
    subject.rating = nil
    expect(subject).to_not be_valid
  end

  it "is not valid if the rating is not an integer" do
    subject.rating="A"
    expect(subject).to_not be_valid
  end

  it 'is not valid with a rating less than 1 or greater than 5' do
    subject.rating = 0
    expect(subject).to_not be_valid

    subject.rating = 6
    expect(subject).to_not be_valid
  end

  it 'is not valid without a city association' do
    subject.city = nil
    expect(subject).to_not be_valid
  end
end