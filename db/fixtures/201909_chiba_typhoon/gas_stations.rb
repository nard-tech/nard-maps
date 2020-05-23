require 'csv'

csv_data = CSV.read(Rails.root.join('private', '201909_chiba_typhoon', 'gas_stations.csv'), headers: true)
gas_stations = []
csv_data.each do |data|
  latlng = data['緯度・経度']
  lat, lng = latlng&.split(/,/)

  gas_stations << GasStation.new(
    name: data['名称'],
    company_name: data['運営会社等'],
    brand_name: data['ブランド'],
    shop_name: data['給油所名'],
    address: data['所在地'],
    category: data['種類'],
    status: data['ステータス'],
    memo_for_mapping: data['マッピングに関する特記事項'],
    # memo: nil,
    # date: nil,
    # open_hours: nil,
    source_url: data['出典'],
    # city_code: data['市町村コード'],
    prefecture: data['都道府県'],
    city: data['市区町村'],
    town: data['市区町村以下'],
    tel: data['電話番号'],
    latitude: lat,
    longitude: lng,
    source_confirmed_at: data['出典最終確認日時'],
    staff_name: data['出典確認担当者']
  )
end

GasStation.transaction do
  gas_stations.each(&:save!)
end
