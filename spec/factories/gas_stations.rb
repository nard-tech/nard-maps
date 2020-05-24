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
FactoryBot.define do
  factory :gas_station do
    name { 'MyString' }
    company_name { 'MyString' }
    brand_name { 'MyString' }
    shop_name { 'MyString' }
    address { 'MyString' }
    category { 'MyString' }
    status { 1 }
    memo_for_mapping { 'MyString' }
    source_url { 'MyString' }
    prefecture { 'MyString' }
    city { 'MyString' }
    town { 'MyString' }
    tel { 'MyString' }
    latitude { 1.5 }
    longitude { 1.5 }
    source_confirmed_at { 'MyString' }
    staff_name { 'MyString' }
  end
end
