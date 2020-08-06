require 'net/http'
require 'open-uri'
require 'json'


class GetRequester

  def initialize(url)
    url = "#{url}"
  end

  def get_response_body

  end

  def parse_json
    programs = JSON.parse(self.get_response_body)
    programs.collect do |program|
      program["agency"]
    end
  end

end
