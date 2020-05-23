# frozen_string_literal: true

class Api::GasStationsController < ApplicationController
  before_action :set_gas_station, only: :show

  def index
    @gas_stations = GasStation.with_coordinates
    render json: @gas_stations.map { |object| GasStationSerializer.new(object).serializable_hash }
  end

  def show
    render json: GasStationSerializer.new(@gas_station).serializable_hash
  end

  private

  def set_gas_station
    @gas_station = GasStation.find(params[:id])
  end
end
