class BathhouseSerializer < ApplicationSerializer
  attributes :name,
             :address,
             :status, :date, :close_on, :open_hours,
             :memo, :source_url,
             :source_confirmed_at, :staff_name

  geo_coordinates
end
