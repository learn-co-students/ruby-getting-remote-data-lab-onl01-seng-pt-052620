require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  attr_accessor :uri

  def initialize(url)
    @uri = URI.parse(url)
  end

  def get_response_body
    response = Net::HTTP.get_response(@uri)
    response.body
  end

  def parse_json()
    programs = JSON.parse(self.get_response_body)
    # programs.collect do |program|
    #   program[]  
    # end
  end
end