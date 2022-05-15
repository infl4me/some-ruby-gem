# frozen_string_literal: true

require 'test_helper'
require_relative '../lib/ipgeobase'

class TestIpgeobase < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_basic_usage
    ip_meta = Ipgeobase::Client.lookup('8.8.8.8')
    # assert_equal ip_meta.city 'Ashburn'
    # assert_equal ip_meta.country 'United States'
    # assert_equal ip_meta.countryCode 'US'
    # assert_equal ip_meta.lat '39.03'
    # assert_equal ip_meta.lon '-77.5'
  end
end
