class V1::JuicesController < ApplicationController
  def index
    @juices = Juice.all
    render json: @juices, meta: { result_set: @juices.size }
  end

  def show
    @juice = Juice.find params[:id]
    render json: @juice, root: false
  end

  def create
    @juice = Juice.create juice_params
    render json: @juice, root: false
  end

  def update
    @juice = Juice.find params[:id]
    @juice.update juice_params
    render json: @juice, root: false
  end

  def destroy
    @juice = Juice.find params[:id]
    @juice.destroy
    head :no_content
  end

  private

  def juice_params
    params.require(:juice).permit(:name, :ratio, :maker)
  end
end
