require 'direct_employers/connection'
require 'direct_employers/request'

module DirectEmployers
  class Client
    attr_accessor :key
    include DirectEmployers::Connection
    include DirectEmployers::Request

    # Set your development key on New
    #
    # @param options [Hash] A customizable set of options. 
    # @example
    #   DirectEmployers.New({:key => "abc123"})
    def initialize(options={})
      @key = options[:key]
    end

    # Get a list of all jobs that match the query string parameters
    #
    # @param options [Hash] A customizable set of options.
    # @option options kw [String] Keywords in a standard Boolean format.
    # @option options oc [String] Occupation from a list of ##.  Must be only Can be used to map to categories if client site uses categories
    # @option options tm [String] Time range from 1 (for 1 day) upwards, with 0 meaning no time range
    # @option options ind [String] One of JobCentral’s industry ids, I would suggest using Onets over industries any day
    # @option options cn [String] Country, US is 100, so if you want to eliminate foreign jobs, include this cn=100
    # @option options zc [String]  Zipcode or City,State or State (TN or Tennessee) Examples : zc=TN, zc=23454, zc=Nashville%2CTN Default radius is 25 miles, value should be URLEncoded
    # @option options zc1 and rd1 [String] Same as above, only you can provide a number of miles from this set of numbers for rd1 : 5,10,15,25,50,100,300, value should be URLEncoded Zc1=Indianapolis%2CIN&rd1=50
    # @option options cname [String]  All or part of a company name, value should be URLEncoded
    # @option options i [String] Values e or s for employers or staffing firms only
    # @option options moc [String] Moc code, retrieves a mapped Onet code, which is used to search
    # @option options rank [String] Further qualifies the mappings for moc
    # @option options branch [String] Further qualifies the mappings for moc
    # @option options so [String] One of two values, “relevance”, or “initdate”, Default if nothing is passed is relevance
    # @option options rs [String] Start row, from 1 to 500
    # @option options re [String] End row, from 1 to 500
    # @option options si [String] Search id, as described above
    # @return [Array<Hashie::Mash>] 
    # @example
    #   DirectEmployers.search({:moc => "11b"})
    def search(options={})
      get("api.asp", options)
    end

  end
end
