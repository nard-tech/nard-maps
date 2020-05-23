class WaterSupplyPointSerializer < ApplicationSerializer
  attributes :name, :address, :status,
             :memo_for_mapping, :memo,
             :date, :open_hours,
             :source_url,
             :city_code,
             :prefecture, :city, :town,
             :tel,
             :source_confirmed_at, :staff_name

  geo_coordinates
end
