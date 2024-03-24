require 'rails_helper'

RSpec.describe Collection, type: :model do
  let(:user) { FactoryBot.create(:user) }
  let(:city) { FactoryBot.create(:city) }
  subject { FactoryBot.create(:collection, user:, city:) }

  it 'is valid with a name' do
    expect(subject).to be_valid
  end
  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).not_to be_valid
  end

  describe 'associations' do
    it 'should belong to a user' do
      association = described_class.reflect_on_association(:user)
      expect(association).not_to be_nil
      expect(association.macro).to eq(:belongs_to)
    end
    it 'should belong to a city' do
      association = described_class.reflect_on_association(:city)
      expect(association).not_to be_nil
      expect(association.macro).to eq(:belongs_to)
    end
  end
end
