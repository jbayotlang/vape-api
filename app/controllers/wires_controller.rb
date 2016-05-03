class WiresController < ApplicationController
  def index
    @wires = Wire.all
    render json: @wires, meta: { result_set: @wires.size }
  end
end
