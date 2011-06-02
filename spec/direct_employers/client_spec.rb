require 'helper'

describe DirectEmployers::Client do
  before do
    @client = DirectEmployers::Client.new
  end
  
  describe "#search" do
      before do
        stub_get("").
          to_return(:status => 200, :body => fixture("search_to_broad.xml"))
      end

      it "should search jobs" do
        search = @client.search
        a_get("").should have_been_made
      end
    end
end