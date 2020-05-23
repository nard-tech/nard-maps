# frozen_string_literal: true

class WaterSupplyPoint < ApplicationRecord
  enum status: { '開設' => 1, '閉鎖' => 2, '不明' => 3 }

  include GeoScopes
end
