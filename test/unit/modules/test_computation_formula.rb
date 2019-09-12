require "test/unit"
require './modules/computation_formula'

class TestComputationFormula < Test::Unit::TestCase

  test 'distance_in_km' do
    lat_a = 53.339428
    lng_a = -6.257664

    lat_b = 52.986375
    lng_b = -6.043701

    km = ComputationFormula.distance(lat_a, lng_a, lat_b, lng_b)
    assert_equal(41.7687255008362, km)
  end

end