require 'direct_employers/client'

module DirectEmployers
  
  def self.client(options={})
    DirectEmployers::Client.new(options)
  end

  # Delegate to DirectEmployers::Client
  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)
    client.send(method, *args, &block)
  end

  def self.respond_to?(method, include_private=false)
    client.respond_to?(method, include_private) || super(method, include_private)
  end
end
