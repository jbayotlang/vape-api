class V1::ModsController < ApplicationController
  def index
    @mods = Mod.all
    render json: @mods, meta: { result_set: @mods.size }
  end

  def show
    @mod = Mod.find params[:id]
    render json: @mod, root: false
  end

  def create
    @mod = Mod.create mod_params
    render json: @mod, root: false
  end

  def update
    @mod = Mod.find params[:id]
    @mod.update mod_params
    render json: @mod, root: false
  end

  def destroy
    @mod = Mod.find params[:id]
    @mod.destroy
    head :no_content
  end

  private

  def mod_params
    params.require(:mod).permit(:name, :mod_type, :battery, :maker)
  end
end
