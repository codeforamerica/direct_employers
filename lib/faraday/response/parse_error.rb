require 'faraday'

module Faraday
  class Response::ParseError < Response::Middleware
    def on_complete(env)
      if 200 == env[:status] && 'unknown site' == env[:body]
        raise Faraday::Error::ParsingError, response_values(env)
      end
    end

    def response_values(env)
      {:status => env[:status], :headers => env[:response_headers], :body => env[:body]}
    end
  end
end

