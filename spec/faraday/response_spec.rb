require 'helper'

describe Faraday::Response do
  before do
    @client = DirectEmployers::new(:key => "abc123")
  end

  {
    400 => Faraday::Error::ClientError,
    401 => Faraday::Error::ClientError,
    403 => Faraday::Error::ClientError,
    404 => Faraday::Error::ResourceNotFound,
    406 => Faraday::Error::ClientError,
    500 => Faraday::Error::ClientError,
    501 => Faraday::Error::ClientError,
    502 => Faraday::Error::ClientError,
    503 => Faraday::Error::ClientError,
  }.each do |status, exception|
    context "when HTTP status is #{status}" do

      before do
        stub_get("api.asp?key=abc123&moc=11b").
          to_return(:status => status, :body => fixture("11bquery.xml"))
      end

      it "should raise #{exception.name} error" do
        lambda do
          @client.search(:key=> "abc123", :moc => "11b")
        end.should raise_error exception
      end
    end
  end
  context "with no items found in search query" do
    before do
      stub_get("api.asp").
        to_return(:status => 200, :body => '')
    end

    it "should raise an exception" do
      lambda do
        @client.search
      end.should raise_error
    end
  end
end