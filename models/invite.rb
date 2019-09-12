require './modules/computation_formula'
require 'json'

class Invite

  # Lat-Lng for Dublin office
  LAT_A = 53.339428
  LNG_A = -6.257664
  RANGE = 100

  include ComputationFormula

  def self.list
    invitelist = []

    # Open file to read content line by line
    fh = File.open('customers.txt', 'r')

    fh.each_line do |line|
      customer = JSON.parse(line)
      km = ComputationFormula.distance(LAT_A, LNG_A, customer['latitude'].to_f, customer['longitude'].to_f)
      invitelist << customer if km < RANGE
    end
    fh.close

    puts 'sorted customer locations'
    puts invitelist.sort_by! { |k| k["user_id"] }

    return invitelist
  end
end