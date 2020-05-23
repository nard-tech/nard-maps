# frozen_string_literal: true

require 'csv'

csv_data = CSV.read(Rails.root.join('private', '201806_osaka_earthquake', 'bathhouses.csv'), headers: true)
bathhouses = []
csv_data.each do |data|
  prefecture = data['都道府県']
  prefecture = prefecture.tr('０-９ａ-ｚＡ-Ｚ', '0-9a-zA-Z') if prefecture.present?

  city = data['市区町村']
  city = city.tr('０-９ａ-ｚＡ-Ｚ', '0-9a-zA-Z') if city.present?

  town = data['市区町村以下']
  if town.present?
    town = town.tr('０-９ａ-ｚＡ-Ｚ', '0-9a-zA-Z').gsub(/−/, '-').gsub(/－/, '-')
  end

  status = case data['営業状況']
           when '1 通常営業'
             '通常営業'
           when '2 営業予定'
             '営業予定'
           when '3 営業休止/再開見込みなし'
             '営業休止/再開見込みなし'
           when '4 不明'
             '不明'
           when '5 自衛隊による支援'
             '自衛隊による支援'
  end

  address = [prefecture, city, town].join(' ')

  lat = nil
  lng = nil
  geocoder_results = Geocoder.search(address)
  lat, lng = geocoder_results.first.coordinates if geocoder_results.present?
  sleep(0.1)

  bathhouses << Bathhouse.new(
    name: data['名称'],
    address: address,
    status: status,
    date: data['日付'],
    closed_on: data['休業日'],
    open_hours: data['営業時間'],
    memo: data['メモ'],
    source_url: data['URL'],
    prefecture: prefecture,
    city: city,
    town: town,
    latitude: lat,
    longitude: lng
  )
end

Bathhouse.transaction do
  bathhouses.each(&:save!)
end
