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
class Bathhouse < ApplicationRecord
  enum status: {
    '通常営業' => 1,
    '営業予定' => 2,
    '営業休止/再開見込みなし' => 3,
    '自衛隊による支援' => 5,
    '不明' => 9
  }

  include GeoScopes
end
