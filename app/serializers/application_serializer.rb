class ApplicationSerializer
  include JSONAPI::Serializer

  set_key_transform :camel_lower

  def self.geo_coordinates
    attribute :coordinates do |object|
      { latitude: object.latitude, longitude: object.longitude }
    end
  end
end
