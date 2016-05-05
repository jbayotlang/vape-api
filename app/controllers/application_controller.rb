class ApplicationController < ActionController::API
  include ActionController::Serialization

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActionController::ParameterMissing do | exception |
    render json: { error: "#{exception.param} is required" }, status: 422
  end

  def validation_error_response(obj)
    render json: {
      status: "400",
      code: "1",
      title: "Validation Errors",
      details: { errors: obj.errors.full_messages },
    }, status: :bad_request
  end

  private

  # Status Code: 404
  def record_not_found
    render json: { "status_code": "not_found" }
  end
end
