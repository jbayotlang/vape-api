class ApplicationController < ActionController::API

  def routing_error_response
    render json: {
      status_code: "404",
      code: "3",
      title: "Routing error",
      details: { message: "No route matches [#{request.method}] #{request.path}" },
    }, status: :not_found
  end
  
end
