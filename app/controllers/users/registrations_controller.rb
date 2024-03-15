class Users::RegistrationsController < ApplicationController
    respond_to :json

    private

    def respond_with(resource, _opts = {}) 
      register_success && return if resource.persisted?

      register_failed resource
    end

    def register_success
      render json: { message: 'Signed up successfully.' }, status: :created
    end

    def register_failed
      render json: { message: resource.errors.full_messages }, status: :bad_request
    end
end
