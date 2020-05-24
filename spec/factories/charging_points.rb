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
FactoryBot.define do
  factory :charging_point do
    name { 'MyString' }
    address { 'MyString' }
    status { 'MyString' }
    memo_for_mapping { 'MyText' }
    date { 'MyString' }
    open_hours { 'MyString' }
    memo { 'MyText' }
    source_url { 'MyString' }
    city_code { 'MyString' }
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
