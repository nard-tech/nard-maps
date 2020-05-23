class WaterSupplyPointsController < ApplicationController
  before_action :set_water_supply_point, only: :show

  def index
    @water_supply_points = WaterSupplyPoint.with_coordinates
    render json: @water_supply_points.map { |object| WaterSupplyPointSerializer.new(object).serializable_hash }
  end

  def show
    render json: WaterSupplyPointSerializer.new(@water_supply_point).serializable_hash
  end

  private

  def set_water_supply_point
    @water_supply_point = WaterSupplyPoint.find(params[:id])
  end
end
