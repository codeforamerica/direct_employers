# -*- encoding: utf-8 -*-
require 'helper'

describe DirectEmployers do
    
  describe ".respond_to?" do
    it "should be true if method exists" do
      DirectEmployers.respond_to?(:client, true).should be_true
    end
  end

  describe ".client" do
    it "should be a DirectEmployers::Client" do
      DirectEmployers.client.should be_a DirectEmployers::Client
    end
  end
  
end