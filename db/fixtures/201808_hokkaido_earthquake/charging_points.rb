require 'csv'

csv_data = CSV.read(Rails.root.join('db', 'data', '201808_hokkaido_earthquake', 'charging_points.csv'), headers: true)
charging_points = []
csv_data.each do |data|
  lat = data['緯度']
  lng = data['経度']

  charging_points << ChargingPoint.new(
    name: data['施設名'],
    address: data['所在地'],
    status: data['ステータス'],
    carieer: data['キャリア'],
    latitude: lat,
    longitude: lng,
    memo_for_mapping: data['マッピング上の特記事項'],
    memo: data['提供サービス'],
    open_hours: data['開設時間'],
    cloesed_on: data['定休日'],
    memo: data['利用に関する特記事項'],
    source_url: data['出典'],
    source_confirmed_at: data['出典最終確認日時'],
    # city_code: data['市町村コード'],
    prefecture: data['都道府県'],
    city: data['市区町村'],
    town: data['市区町村以下'],
    # tel: nil,
    staff_name: '藤田 周'
  )
end

ChargingPoint.transaction do
  charging_points.each(&:save!)
end
