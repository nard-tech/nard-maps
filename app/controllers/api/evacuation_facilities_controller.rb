# frozen_string_literal: true

class Api::EvacuationFacilitiesController < ApplicationController
  before_action :set_evacuation_facility, only: :show

  def index
    @evacuation_facilities = EvacuationFacility.with_coordinates
    render json: EvacuationFacilitySerializer.new(@evacuation_facilities, is_collection: true).serializable_hash
  end

  def show
    render json: EvacuationFacilitySerializer.new(@evacuation_facility).serializable_hash
  end

  private

  def set_evacuation_facility
    @evacuation_facility = EvacuationFacility.find(params[:id])
  end
end
