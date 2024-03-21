require 'rails_helper'

RSpec.describe "Users::Registrations", type: :request do
  describe "POST /users" do
    it "should not create an account for weak passwords" do
      post "/users", params: { user: { email: "test@example.com", password: "12345678" } }
      expect(response).to have_http_status(:bad_request)
    end

    it "should create an account for strong passwords" do
      post "/users", params: { user: { email: "test@example.com", password: "a7&43Wcxy6ij" } }
      expect(response).to have_http_status(:success)
    end
  end
end