class ShopsController < ApplicationController
  def index
    @shops = Shop.all
    render json: @shops, meta: { result_set: @shops.size }
  end
end
