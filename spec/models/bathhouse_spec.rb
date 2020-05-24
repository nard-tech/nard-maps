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
require 'rails_helper'

RSpec.describe Bathhouse, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
