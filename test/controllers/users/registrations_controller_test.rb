require "test_helper"

class Users::RegistrationsControllerTest < ActionDispatch::IntegrationTest
    test "should not create an account if password is weak" do
        debugger
        post "/users", params: { user: {
          email: "test@example.com",
          password: "12345678"
          } 
        }
        assert_response :bad_request
      end
end
