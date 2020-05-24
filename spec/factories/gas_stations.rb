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
