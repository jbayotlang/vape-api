class V1::ModsController < V1::BaseController
  def index
    @mods = Mod.all
    render json: @mods, meta: { result_set: @mods.size }, status: :ok
  end

  def show
    @mod = Mod.find params[:id]
    render json: @mod, root: false
  end

  def create
    @mod = Mod.new mod_params
    if @mod.save
      render json: @mod, root: false
    else
      validation_error_response(@mod)
    end
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
