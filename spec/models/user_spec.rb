require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is database authenticable' do
    user = User.create(
      email: 'test@example',
      password: 'a7&43Wcxy6ij'
    )
    expect(user.valid_password?('a7&43Wcxy6ij')).to be_truthy
  end
end
