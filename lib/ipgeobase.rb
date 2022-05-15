# frozen_string_literal: true

require_relative 'ipgeobase/version'
require 'net/http'
require 'happymapper'

module Ipgeobase
  class Error < StandardError; end

  @api = 'http://ip-api.com/xml/'

  def self.lookup(ip)
    result = Net::HTTP.get(URI(@api + ip))
    HappyMapper.parse(result)
  end
end
