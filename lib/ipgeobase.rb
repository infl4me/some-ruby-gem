# frozen_string_literal: true

require_relative 'ipgeobase/version'
require 'net/http'

module Ipgeobase
  class Error < StandardError; end

  class Client
    @api = 'http://ip-api.com/xml/'

    def self.lookup(ip)
      result = Net::HTTP.get(URI(@api + ip))
      puts result
    end
  end
end
