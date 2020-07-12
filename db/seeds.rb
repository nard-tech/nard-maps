# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

load Rails.root.join('db', 'fixtures', '201604_kumamoto_earthquake', 'evacuation_facilities.rb')

load Rails.root.join('db', 'fixtures', '201806_osaka_earthquake', 'bathhouses.rb')
load Rails.root.join('db', 'fixtures', '201806_osaka_earthquake', 'water_supply_points.rb')

# load Rails.root.join('db', 'fixtures', '201807_west_japan_heavy_rain', 'water_supply_points.rb')

load Rails.root.join('db', 'fixtures', '201909_chiba_typhoon', 'water_supply_points.rb')
load Rails.root.join('db', 'fixtures', '201909_chiba_typhoon', 'gas_stations.rb')
load Rails.root.join('db', 'fixtures', '201909_chiba_typhoon', 'charging_points.rb')

load Rails.root.join('db', 'fixtures', '202007_kumamoto_heavy_rain', 'water_supply_points.rb')
