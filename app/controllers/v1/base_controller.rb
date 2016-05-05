class V1::BaseController < ActionController::API
  include ActionController::Serialization

  rescue_from ActiveRecord::RecordNotFound,
      with: :record_not_found_response
  rescue_from ActionController::ParameterMissing,
      with: :parameter_missing_response
  rescue_from ActionController::RoutingError,
      with: :routing_error_response

  def validation_error_response(obj)
    render json: {
      status_code: "400",
      code: "1",
      title: "Validation Errors",
      details: { errors: obj.errors.full_messages },
    }, status: :bad_request
  end

  def routing_error_response
    render json: {
      status_code: "404",
      code: "3",
      title: "Routing error",
      details: { message: "No route matches [#{request.method}] #{request.path}" },
    }, status: :not_found
  end

  private

  def record_not_found_response(e)
    render json: {
      status_code: "404",
      code: "2",
      title: "Record not found",
      details: { message: e.message },
    }, status: :not_found
  end

  def parameter_missing_response(e)
    render json: {
      status_code: "422",
      code: "3",
      title: "Parameter missing",
      details: { message: e.message },
    }, status: 422
  end
end
