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
class BathhouseSerializer < ApplicationSerializer
  attributes :name,
             :address,
             :status, :date, :close_on, :open_hours,
             :memo, :source_url,
             :source_confirmed_at, :staff_name

  geo_coordinates
end
