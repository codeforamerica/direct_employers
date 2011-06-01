require 'helper'

describe DirectEmployers do
  describe ".new" do
    it "should return a DirectEmployers::Client" do
      DirectEmployers.new.should be_a DirectEmployers::Client
    end
  end
end