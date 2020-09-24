require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester

  def initialize(input_url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json")
    @url = input_url
  end

  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    data = JSON.parse(self.get_response_body)
  end

end
