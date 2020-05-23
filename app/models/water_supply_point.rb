# frozen_string_literal: true

class WaterSupplyPoint < ApplicationRecord
  enum status: { '開設' => 1, '閉鎖' => 2, '不明' => 3 }

  scope :with_coordinates, -> { where.not(latitude: nil).where.not(longitude: nil) }
end
