require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
    def initialize(url)
        @url = url
        @uri = URI.parse(@url)
    end 

    def get_response_body
        Net::HTTP.get_response(@uri).body 
    end 

    def parse_json
        JSON.parse(self.get_response_body)
    end 
end 