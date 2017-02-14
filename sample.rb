require 'rest-client'
require 'json'

url = "https://swapi.co/api/people/1"
response = RestClient.get(url)

data = JSON.parse(response.body)

puts data["results"].map { |character| character["name"] }
