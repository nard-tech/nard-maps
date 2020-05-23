FactoryBot.define do
  factory :bathhouse do
    name { "MyString" }
    address { "MyString" }
    status { "MyString" }
    date { "MyString" }
    closed_on { "MyString" }
    open_hours { "MyString" }
    memo { "MyText" }
    source_url { "MyString" }
    prefecture { "MyString" }
    city { "MyString" }
    town { "MyString" }
    latitude { 1.5 }
    longitude { 1.5 }
  end
end
