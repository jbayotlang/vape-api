class V1::WiresController < ApplicationController
  def index
    @wires = Wire.all
    render json: @wires, meta: { result_set: @wires.size }
  end

  def show
    @wire = Wire.find params[:id]
    render json: @wire, root: false
  end

  def create
    @wire = Wire.new wire_params
    if @wire.save
      render json: @wire, root: false
    else
      validation_error_response(@wire)
    end
  end

  def update
    @wire = Wire.find params[:id]
    @wire.update wire_params
    render json: @wire, root: false
  end

  def destroy
    @wire = Wire.find params[:id]
    @wire.destroy
    head :no_content
  end

  private

  def wire_params
    params.require(:wire).permit(:name, :wire_type, :maker)
  end
end
