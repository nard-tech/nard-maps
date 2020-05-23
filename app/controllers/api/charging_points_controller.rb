# frozen_string_literal: true

class Api::ChargingPointsController < ApplicationController
  before_action :set_charging_point, only: :show

  def index
    @charging_points = ChargingPoint.with_coordinates
    render json: @charging_points.map { |object| ChargingPointSerializer.new(object).serializable_hash }
  end

  def show
    render json: ChargingPointSerializer.new(@charging_point).serializable_hash
  end

  private

  def set_charging_point
    @charging_point = ChargingPoint.find(params[:id])
  end
end
