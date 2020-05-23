# frozen_string_literal: true

module GeoScopes
  extend ActiveSupport::Concern

  included do
    scope :with_coordinates, -> { where.not(latitude: nil).where.not(longitude: nil) }
  end
end
