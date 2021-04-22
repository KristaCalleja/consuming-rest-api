require 'rest-client'
require 'json'

url = "https://api.github.com/search/repositories?"
query = "lewagon"
language = "ruby"

response = RestClient.get "#{url}q=#{query}&language=#{language}"

# returns the status
puts response.code
# returns a JSON with content
puts response.body
# parse the JSON and turn it to a hash
puts JSON.parse(response.body)
# extract info from hash, using this as a guide: https://docs.github.com/en/rest/reference/search
puts JSON.parse(response.body)["total_count"]
puts JSON.parse(response.body)["items"][18]["description"]