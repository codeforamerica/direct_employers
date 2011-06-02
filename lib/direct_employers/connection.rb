require 'faraday_middleware'

module DirectEmployers
  module Connection
    private

    def connection
      Faraday.new(:url => 'http://www.jobcentral.com') do |connection|
        connection.use Faraday::Request::UrlEncoded
        connection.use Faraday::Response::RaiseError
        connection.use Faraday::Response::Rashify
        connection.use Faraday::Response::ParseJson
        connection.adapter(Faraday.default_adapter)
      end
    end
  end
end