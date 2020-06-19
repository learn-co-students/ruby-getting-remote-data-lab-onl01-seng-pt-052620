# Write your code here
require 'open-uri'
require 'json'
require 'net/http'

class GetRequester
    
    attr_accessor :URL

    def initialize(url)
        @URL = url
    end

    def get_response_body
        Net::HTTP.get_response(URI.parse(@URL)).body
    end

    def parse_json
        JSON.parse(self.get_response_body)
    end


end

