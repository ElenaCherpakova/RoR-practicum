class Users::RegistrationsController < Devise::RegistrationsController
  private

  def respond_with(resource, _opts = {})
    register_success && return if resource.persisted?

    register_failed resource
  end

  def register_success
    redirect_to root_path, notice: 'Signed up sucessfully.'
  end

  def register_failed(resource)
    # here we need to throw an error
    # @error_message = resource.errors.full_messages.join(', ')
    render :new
  end
end
