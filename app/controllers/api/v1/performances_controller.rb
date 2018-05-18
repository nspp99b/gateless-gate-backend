class Api::V1::PerformancesController < ApplicationController

  def index
    @performances = Performance.all
    render json: @performances, status: 200
  end

  def create
    @performance = Performance.new(performance_params)
    if @performance.valid?
      @performance.save
      render json: @performance, status: 200
    else
      render json: {error: 'A room with this name already exists!'}, status: 401
    end
  end

  def show
    @performance = Performance.find_by(id: params[:id])
    render json: @performance, status: 200
  end

  private

  def perfomance_params
    params.require(:performance).permit(:name)
  end

end
