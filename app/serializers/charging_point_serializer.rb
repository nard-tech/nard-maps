# frozen_string_literal: true

class ChargingPointSerializer < ApplicationSerializer
  attributes :name,
             :address,
             :status, :memo_for_mapping, :date, :open_hours,
             :memo, :source_url,
             :city_code, :tel,
             :source_confirmed_at, :staff_name

  geo_coordinates
end
