require 'csv'

csv_data = CSV.read(Rails.root.join('private', '201806_osaka_earthquake', 'water_supply_points.csv'), headers: true)
water_supply_points = []
csv_data.each do |data|
  prefecture = data['都道府県']
  prefecture = prefecture.tr('０-９ａ-ｚＡ-Ｚ', '0-9a-zA-Z') if prefecture.present?

  city = data['市区町村']
  city = city.tr('０-９ａ-ｚＡ-Ｚ', '0-9a-zA-Z') if city.present?

  town = data['市区町村以下']
  town = town.tr('０-９ａ-ｚＡ-Ｚ', '0-9a-zA-Z').gsub(/−/, '-').gsub(/－/, '-') if town.present?

  address = [prefecture, city, town].join(' ')

  lat = nil
  lng = nil
  geocoder_results = Geocoder.search(address)
  lat, lng = geocoder_results.first.coordinates if geocoder_results.present?
  sleep(0.1)

  water_supply_points << WaterSupplyPoint.new(
    name: data['名称'],
    address: address,
    status: (data['記事'] == '閉鎖/終了' ? '閉鎖' : data['記事']),
    # memo_for_mapping: nil,
    # memo: nil,
    # date: nil,
    # open_hours: nil,
    source_url: data['出典'],
    # city_code: nil,
    prefecture: prefecture,
    city: city,
    town: town,
    # tel: nil,
    latitude: lat,
    longitude: lng,
    source_confirmed_at: data['最終確認日時']
    # staff_name: nil
  )
end

WaterSupplyPoint.transaction do
  water_supply_points.each(&:save!)
end
