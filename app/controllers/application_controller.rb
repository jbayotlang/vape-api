class ApplicationController < ActionController::API
  include ActionController::Serialization

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

  # Status Code: 404
  def record_not_found
    render json: { "status_code": "not_found" }
  end
end
