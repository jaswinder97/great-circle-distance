# frozen_string_literal: true

# Calculate the great-circle distance between two points in kilometers (km.)

# Example:
#  >> ComputationFormula.distance(53.339428, -6.257664, 52.966, -6.043701)
#  => 41.7687255008362
  
#  Arguments:
#    lat_a: (Float)
#    lng_a: (Float)
#    lat_b: (Float)
#    lng_b: (Float)

class Float
  RADIAN_PER_DEGREE = Math::PI / 180.0

  def toRad
    self * RADIAN_PER_DEGREE
  end
end

module ComputationFormula
  EARTH_RADIUS_KM = 6371.00

  def self.distance(lat_a, lng_a, lat_b, lng_b)
    distance_in_radius(lat_a, lng_a, lat_b, lng_b) * EARTH_RADIUS_KM
  end

  private

  def self.distance_in_radius(lat_a, lng_a, lat_b, lng_b)
    d_lat = (lat_a - lat_b).toRad
    d_lng = (lng_a - lng_b).toRad

    a = Math.sin(d_lat / 2)**2 + Math.cos(lat_a.toRad) * Math.cos(lat_b.toRad) * Math.sin(d_lng / 2)**2
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))

    c
  end
end
