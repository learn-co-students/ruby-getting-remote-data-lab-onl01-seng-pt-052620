require 'pry'
require 'net/http'
require 'json'
require 'open-uri'

class GetRequester

    attr_accessor :url

    def initialize(url)
        @url = url
    end

    def get_response_body
        # sends get request to url passed in on initialization
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
        # returns body of response
    end

    def parse_json
        # uses get_response_body method to send a request
        JSON.parse(self.get_response_body)
        # returns ruby array or hash with that data
    end

end