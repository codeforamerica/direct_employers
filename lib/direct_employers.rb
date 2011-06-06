require 'direct_employers/client'

module DirectEmployers
  def self.new(options={})
    DirectEmployers::Client.new(options)
  end

  # Delegate to DirectEmployers::Client
  def self.method_missing(method, *args, &block)
    return super unless new.respond_to?(method)
    new.send(method, *args, &block)
  end

  def self.respond_to?(method, include_private=false)
    new.respond_to?(method, include_private) || super(method, include_private)
  end
end
