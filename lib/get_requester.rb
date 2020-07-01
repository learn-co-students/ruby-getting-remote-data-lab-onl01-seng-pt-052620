require 'net/http'
require 'open-uri'
require 'json'
require 'pry'



class GetRequester

  attr_accessor :url

  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(url)
    returned_result = uri.open.string
    returned_result
  end

  def parse_json
    response = JSON.parse(self.get_response_body)
    # binding.pry
    response
  end




end