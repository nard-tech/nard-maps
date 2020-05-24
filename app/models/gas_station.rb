# == Schema Information
#
# Table name: gas_stations
#
#  id                  :bigint           not null, primary key
#  name                :string           not null
#  company_name        :string
#  brand_name          :string
#  shop_name           :string
#  address             :string
#  category            :string
#  status              :integer
#  memo_for_mapping    :string
#  memo                :text
#  date                :string
#  open_hours          :string
#  source_url          :string
#  city_code           :string
#  prefecture          :string
#  city                :string
#  town                :string
#  tel                 :string
#  latitude            :float
#  longitude           :float
#  source_confirmed_at :datetime
#  staff_name          :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class GasStation < ApplicationRecord
  enum status: { '開設' => 1, '閉鎖' => 2, '不明' => 3 }

  include GeoScopes
end
