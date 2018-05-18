class Api::V1::StrokesController < ApplicationController

  def create
    @stroke = Stroke.new(stroke_params)
    if @stroke.valid?
      @stroke.save
      render json: @stroke, status: 200
    else
      render json: {error: "error creating stroke, hit the practice pad"}, status: 401
    end
  end

  private

  def stroke_params
    params.require(:stroke).permit(:user_id, :performance_id)
  end
end
