class V1::JuicesController < V1::BaseController
  def index
    @juices = Juice.all
    render json: @juices, meta: { result_set: @juices.size }, status: :ok
  end

  def show
    @juice = Juice.find params[:id]
    render json: @juice, root: false, status: :ok
  end

  def create
    @juice = Juice.new juice_params
    if @juice.save
      render json: @juice, root: false, status: :created
    else
      validation_error_response(@juice)
    end
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
