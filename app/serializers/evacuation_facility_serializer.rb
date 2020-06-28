class EvacuationFacilitySerializer < ApplicationSerializer
  attributes :name,
             :address,
             :status, :facility_type, :core, :memo_for_mapping,
             :memo, :opened_at, :closed_at, :people_count, :people_counted_on,
             :source_url, :source_memo,
             :source_confirmed_at, :staff_name,
             :city_code, :prefecture, :city, :town,
             :tel,
             :height,
             :tsunami_status, :earthquake_resistance,
             :available_for, :not_available_for,
             :wanted, :sufficient,
             :confused, :other_memo, :welfare, :not_known

  geo_coordinates
end
