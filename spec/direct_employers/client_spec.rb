require 'helper'

describe DirectEmployers::Client do
  before do
    @client = DirectEmployers::Client.new
  end
  
  describe "#search" do
    context "with no query parameters" do
      before do
        stub_get("api.asp?key=abc123").
          to_return(:status => 200, :body => fixture("search_to_broad.xml"))
      end

      it "should return search to broad" do
        search = @client.search(:key => "abc123")
        a_get("api.asp?key=abc123").should have_been_made
        search.api.error.should == "Search Too Broad"
      end
    end
  end
end