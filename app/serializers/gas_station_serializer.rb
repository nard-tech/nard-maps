# frozen_string_literal: true

class GasStationSerializer < ApplicationSerializer
  attributes :name, :company_name, :brand_name, :shop_name,
             :address, :category, :status, :memo_for_mapping, :source_url,
             :tel,
             :source_confirmed_at, :staff_name

  geo_coordinates
end
