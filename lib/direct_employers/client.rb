require 'direct_employers/connection'
require 'direct_employers/request'

module DirectEmployers
  class Client
    include DirectEmployers::Connection
    include DirectEmployers::Request

  end
end