# == Schema Information
#
# Table name: bathhouses
#
#  id         :bigint           not null, primary key
#  name       :string
#  address    :string
#  status     :integer
#  date       :string
#  closed_on  :string
#  open_hours :string
#  memo       :text
#  source_url :string
#  prefecture :string
#  city       :string
#  town       :string
#  latitude   :float
#  longitude  :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :bathhouse do
    name { 'MyString' }
    address { 'MyString' }
    status { 'MyString' }
    date { 'MyString' }
    closed_on { 'MyString' }
    open_hours { 'MyString' }
    memo { 'MyText' }
    source_url { 'MyString' }
    prefecture { 'MyString' }
    city { 'MyString' }
    town { 'MyString' }
    latitude { 1.5 }
    longitude { 1.5 }
  end
end
