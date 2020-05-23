# frozen_string_literal: true

class Api::BathhousesController < ApplicationController
  before_action :set_bathhouse, only: :show

  def index
    @bathhouses = Bathhouse.with_coordinates
    render json: @bathhouses.map { |object| BathhouseSerializer.new(object).serializable_hash }
  end

  def show
    render json: BathhouseSerializer.new(@bathhouse).serializable_hash
  end

  private

  def set_bathhouse
    @bathhouse = Bathhouse.find(params[:id])
  end
end
