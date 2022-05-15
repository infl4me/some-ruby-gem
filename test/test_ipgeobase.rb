# frozen_string_literal: true

require 'test_helper'
require_relative '../lib/ipgeobase'

class TestIpgeobase < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_basic_usage
    target_ip = '8.8.8.8'
    data = File.read(File.join(__dir__, 'fixtures', 'ip_api_response.xml'))
    stub_request(:any, Regexp.new(target_ip))
      .to_return(body: data)

    ip_meta = Ipgeobase.lookup(target_ip)

    assert_equal ip_meta.city, 'Ashburn'
    assert_equal ip_meta.country, 'United States'
    assert_equal ip_meta.country_code, 'US'
    assert_equal ip_meta.lat, '39.03'
    assert_equal ip_meta.lon, '-77.5'
  end
end
