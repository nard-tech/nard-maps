class ChargingPoint < ApplicationRecord
  enum status: { '開設' => 1, '閉鎖' => 2, '不明' => 3, '休止' => 4 }

  include GeoScopes
end
