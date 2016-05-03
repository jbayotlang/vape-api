class JuicesController < ApplicationController
  def index
    @juices = Juice.all
    render json: @juices, meta: { result_set: @juices.size }
  end
end
