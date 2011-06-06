# -*- encoding: utf-8 -*-
require 'helper'

describe DirectEmployers do
    
  describe ".respond_to?" do
    it "should be true if method exists" do
      DirectEmployers.respond_to?(:new, true).should be_true
    end
  end

  describe ".new" do
    it "should be a DirectEmployers::Client" do
      DirectEmployers.new.should be_a DirectEmployers::Client
    end
  end
  
end
