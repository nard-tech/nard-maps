FactoryBot.define do
  factory :charging_point do
    name { "MyString" }
    address { "MyString" }
    status { "MyString" }
    memo_for_mapping { "MyText" }
    date { "MyString" }
    open_hours { "MyString" }
    memo { "MyText" }
    source_url { "MyString" }
    city_code { "MyString" }
    prefecture { "MyString" }
    city { "MyString" }
    town { "MyString" }
    tel { "MyString" }
    latitude { 1.5 }
    longitude { 1.5 }
    source_confirmed_at { "MyString" }
    staff_name { "MyString" }
  end
end
