$:.unshift File.expand_path('..', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)
require 'simplecov'
SimpleCov.start
require 'direct_employers'
require 'rspec'
require 'webmock/rspec'

def a_delete(query)
  a_request(:delete, 'http://www.jobcentral.com/api.asp' + query)
end

def a_get(query)
  a_request(:get, 'http://www.jobcentral.com/api.asp' + query)
end

def a_post(query)
  a_request(:post, 'http://www.jobcentral.com/api.asp' + query)
end

def a_put(query)
  a_request(:put, 'http://www.jobcentral.com/api.asp' + query)
end

def stub_delete(query)
  stub_request(:delete, 'http://www.jobcentral.com/api.asp' + query)
end

def stub_get(query)
  stub_request(:get, 'http://www.jobcentral.com/api.asp' + query)
end

def stub_post(query)
  stub_request(:post, 'http://www.jobcentral.com/api.asp' + query)
end

def stub_put(query)
  stub_request(:put, 'http://www.jobcentral.com/api.asp' + query)
end

def fixture_path
  File.expand_path('../fixtures', __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end