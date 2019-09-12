#!/usr/bin/env ruby

require './models/invite'
require 'json'

class DublinFoodOffer
  class << self
    def run!
      new.execute
    end
  end

  def execute
    # Prepare output.txt file having user ids and customer names
    output_file = File.open('output.txt', 'w')
    Invite.list.each do |customer|
      output_file.puts "#{customer['user_id']}: #{customer['name']}"
    end
    output_file.close
  rescue StandardError => message
    puts message
  end
end

DublinFoodOffer.run! if $PROGRAM_NAME == __FILE__