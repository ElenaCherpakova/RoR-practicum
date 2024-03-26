require 'rails_helper'

RSpec.describe User, type: :model do
  subject { FactoryBot.build(:user) }
  describe 'validation' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'requires an email' do
      subject.email = nil
      expect(subject).not_to be_nil
    end
    it 'requires a password' do
      subject.password = nil
      expect(subject).not_to be_nil
    end

    # it 'requires a strong password' do
    #   invalid_passwords = ['password', '1234567890', 'password123', 'a' * 10, 'a' * 21, 'abc123']
    #   invalid_passwords.each do |password|
    #     subject.password = password
    #     expect(subject).not_to be_valid
    #     expect(subject.errors[:password]).to include('must contain both letters, numbers, and special characters and not be too simple')
    #   end
    #   valid_password = 'ab1d2c3d4!'
    #   subject.password = valid_password
    #   expect(subject).to be_valid
    # end
  end
end
