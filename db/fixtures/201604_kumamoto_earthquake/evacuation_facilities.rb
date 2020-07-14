require 'csv'

def normalize_value(value)
  if value == '（まだ入力されていません）'
    nil
  else
    value
  end
end

csv_data = CSV.read(Rails.root.join('private', '201604_kumamoto_earthquake', 'evacuation_facilities.csv'), headers: true)
evacuation_facilities = []
csv_data.each do |data|
  lat = data['緯度']
  lng = data['経度']
  address = data['所在地']
  if lat.blank? || lng.blank?
    geocoder_results = Geocoder.search(address)
    lat, lng = geocoder_results.first.coordinates if geocoder_results.present?
    sleep(0.1)
  end

  status = data['状況']
  if /・拠点\Z/ =~ status
    status = status.gsub(/・拠点\Z/)
    core = true
  else
    status = status
    core = false
  end

  evacuation_facilities << EvacuationFacility.new(
    name: data['名称（基本）'],
    address: address,
    latitude: lat,
    longitude: lng,
    height: data['標高 (m)'],
    tsunami_status: data['津波発生時'],
    earthquake_resistance: data['耐震性'],
    available_for: normalize_value(data['対応している災害']),
    not_available_for: normalize_value(data['対応していない災害']),
    wanted: normalize_value(data['欲しいもの']),
    sufficient: normalize_value(data['足りているもの']),
    confused: normalize_value(data['困っていること']),
    other_memo: data['その他連絡事項'],
    welfare: data['福祉'],
    not_known: data['不明点'],
    status: nil,
    core: core,
    facility_type: data['避難所の種類'],
    opened_at: data['開設時間'],
    closed_at: data['閉鎖日時'],
    people_count: data['避難者数'],
    people_counted_on: data['避難者数のカウント日時'],
    source_url: data['出典'],
    source_confirmed_at: data['確認日時'],
    # city_code: data['市町村コード'],
    # prefecture: data['都道府県'],
    # city: data['市区町村'],
    # town: data['市区町村以下'],
    # tel: nil,
    staff_name: data['編集者']
  )
end

EvacuationFacility.transaction do
  evacuation_facilities.each(&:save!)
end

csv_real_data = CSV.read(Rails.root.join('private', '201604_kumamoto_earthquake', 'evacuation_facilities_20160430.csv'), headers: true)

EvacuationFacility.transaction do
  csv_real_data.each do |data|
    evacuation_facility = EvacuationFacility.find_by(name: data['名称（基本）'])
    if evacuation_facility.blank?
      puts "#{data['名称（基本）']} is not found"
      next
    end

    puts "#{data['名称（基本）']} -> #{data['状況']}"
    evacuation_facility.update_columns(
      status: data['状況'],
      source_confirmed_at: data['更新日時']
    )
  end
end
