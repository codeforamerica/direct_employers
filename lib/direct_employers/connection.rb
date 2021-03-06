require 'faraday_middleware'
require 'faraday/response/parse_error'

module DirectEmployers
  module Connection
    private

    def connection
      Faraday.new(:url => 'http://www.jobcentral.com') do |connection|
        connection.use Faraday::Request::UrlEncoded
        connection.use Faraday::Response::RaiseError
        connection.use Faraday::Response::Mashify
        connection.use Faraday::Response::ParseXml
        connection.use Faraday::Response::ParseError
        connection.adapter(Faraday.default_adapter)
      end
    end
  end
end
