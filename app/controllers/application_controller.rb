class ApplicationController < ActionController::API
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordInvalid, with: :create_error

  private

  def create_error(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: 422
  end

end
