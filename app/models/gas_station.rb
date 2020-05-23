class GasStation < ApplicationRecord
  enum status: { '開設' => 1, '閉鎖' => 2, '不明' => 3 }

  include GeoScopes
end
