require 'direct_employers/client'

module DirectEmployers
  class << self
    def new(options={})
      DirectEmployers::Client.new(options)
    end

    # Delegate to DirectEmployers::Client
    def method_missing(method, *args, &block)
      return super unless new.respond_to?(method)
      new.send(method, *args, &block)
    end

    def respond_to?(method, include_private=false)
      new.respond_to?(method, include_private) || super(method, include_private)
    end
  end
end
