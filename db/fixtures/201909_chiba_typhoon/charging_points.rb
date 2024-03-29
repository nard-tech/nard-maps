require 'csv'

csv_data = CSV.read(Rails.root.join('db', 'data', '201909_chiba_typhoon', 'charging_points.csv'), headers: true)
charging_points = []
csv_data.each do |data|
  latlng = data['緯度・経度']
  lat, lng = latlng&.split(/,/)

  charging_points << ChargingPoint.new(
    name: data['名称'],
    address: data['所在地'],
    status: data['ステータス'],
    memo_for_mapping: data['マッピングに関する特記事項'],
    memo: data['充電に関する特記事項'],
    date: data['日付'],
    open_hours: data['開設時間'],
    source_url: data['出典'],
    city_code: data['市町村コード'],
    prefecture: data['都道府県'],
    city: data['市区町村'],
    town: data['市区町村以下'],
    # tel: nil,
    latitude: lat,
    longitude: lng,
    source_confirmed_at: data['出典最終確認日時'],
    staff_name: data['出典確認担当者']
  )
end

ChargingPoint.transaction do
  charging_points.each(&:save!)
end
