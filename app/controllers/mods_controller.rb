class ModsController < ApplicationController
  def index
    @mods = Mod.all
    render json: @mods, meta: { result_set: @mods.size }
  end
end
