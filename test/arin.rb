require 'minitest/unit'
require 'minitest/autorun'

path = File.dirname(__FILE__)
require "#{path}/../lib/dert"
require 'yaml'

class TestArin < MiniTest::Unit::TestCase
  def setup
    @options = {}
    @options[:domain] = 'google.com'
    @options[:type] = 'arin'
    @options[:silent] = true
  end

  def test_equal_results
    results = Dert.run(@options)
    pp results
    assert results.to_s
  end
end
