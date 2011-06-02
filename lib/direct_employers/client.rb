require 'direct_employers/connection'
require 'direct_employers/request'

module DirectEmployers
  class Client
    include DirectEmployers::Connection
    include DirectEmployers::Request
    
    def search(options={})
      get("", options)
    end

  end
end