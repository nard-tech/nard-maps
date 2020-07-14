class EvacuationFacility < ApplicationRecord
  include GeoScopes

  # before_save :inspect_status

  private

  def inspect_status
    return unless will_save_change_to_status?

    if /Enumerator/ =~ status
      binding.pry
    end
  end
end
