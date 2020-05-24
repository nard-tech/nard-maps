# == Schema Information
#
# Table name: water_supply_points
#
#  id                  :bigint           not null, primary key
#  name                :string           not null
#  address             :string
#  status              :integer
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
FactoryBot.define do
  factory :water_supply_point do
    name { 'MyString' }
    address { 'MyString' }
    status { 1 }
    memo_for_mapping { 'MyText' }
    memo { 'MyText' }
    source_url { 'MyString' }
    date { 'MyString' }
    open_hours { 'MyString' }
    city_code { 'MyString' }
    prefecture { 'MyString' }
    city { 'MyString' }
    town { 'MyString' }
    latitude { 1.5 }
    longitude { 1.5 }
    source_confirmed_at { '2020-05-23 23:41:48' }
    staff_name { 'MyString' }
  end
end
