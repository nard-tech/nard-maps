# == Schema Information
#
# Table name: charging_points
#
#  id                  :bigint           not null, primary key
#  name                :string           not null
#  address             :string
#  status              :string
#  memo_for_mapping    :text
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
require 'rails_helper'

RSpec.describe ChargingPoint, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
