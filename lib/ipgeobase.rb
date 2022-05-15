# frozen_string_literal: true

require_relative "ipgeobase/version"

module Ipgeobase
  class Error < StandardError; end
  
  self.lookup
end
