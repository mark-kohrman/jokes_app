require 'uri'
require 'net/http'
require 'openssl'
require 'json'

class Api::JokesController < ApplicationController
  
  def index
    render 'index.json.jb'
  end
  
  def show
    url = URI("https://icanhazdadjoke.com/")
    
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
    request = Net::HTTP::Get.new(url)
    request["Accept"] = "application/json"
    response = http.request(request)

    @joke = JSON.parse(response.read_body)['joke']

    render 'show.json.jb'
  end
end
