require 'csv'

csv_data = CSV.read(Rails.root.join('db', 'data', '201806_osaka_earthquake', 'water_supply_points.csv'), headers: true)
water_supply_points = []
csv_data.each do |data|
  prefecture = data['都道府県']
  prefecture = prefecture.tr('０-９ａ-ｚＡ-Ｚ', '0-9a-zA-Z') if prefecture.present?

  city = data['市区町村']
  city = city.tr('０-９ａ-ｚＡ-Ｚ', '0-9a-zA-Z') if city.present?

  town = data['市区町村以下']
  town = town.tr('０-９ａ-ｚＡ-Ｚ', '0-9a-zA-Z').gsub(/−/, '-').gsub(/－/, '-') if town.present?

  address = [prefecture, city, town].join(' ')

  lat = data['緯度']
  lng = data['経度']
  if lat.blank? || lng.blank?
    geocoder_results = Geocoder.search(address)
    lat, lng = geocoder_results.first.coordinates if geocoder_results.present?
    sleep(0.1)
  end

  water_supply_points << WaterSupplyPoint.new(
    name: data['名称'],
    address: address,
    status: data['ステータス'],
    memo_for_mapping: data['マッピングに関する特記事項'],
    memo: data['給水に関する特記事項'],
    date: data['日付'],
    open_hours: data['開設時間'],
    source_url: data['出典'],
    source_memo: data['出典に関する特記事項']
    # city_code: nil,
    prefecture: prefecture,
    city: city,
    town: town,
    # tel: nil,
    latitude: lat,
    longitude: lng,
    source_confirmed_at: data['出典最終確認日時']
    staff_name: data['確認担当者']
  )
end

WaterSupplyPoint.transaction do
  water_supply_points.each(&:save!)
end
