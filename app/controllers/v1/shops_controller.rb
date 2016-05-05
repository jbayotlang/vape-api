class V1::ShopsController < ApplicationController
  def index
    @shops = Shop.all
    render json: @shops, meta: { result_set: @shops.size }
  end

  def show
    @shop = Shop.find params[:id]
    render json: @shop, root: false
  end

  def create
    @shop = Shop.new shop_params
    if @shop.save
      render json: @shop, root: false
    else
      validation_error_response(@shop)
    end
  end

  def update
    @shop = Shop.find params[:id]
    @shop.update shop_params
  end

  def destroy
    @shop = Shop.find params[:id]
    @shop.destroy
    head :no_content
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :address, :hours,
      :sns_page, :longitude, :latitude)
  end
end
