require 'rest-client'
require 'json'

# For specific book, e.g. https://openlibrary.org/works/OL45883W/Fantastic_Mr._Fox we transform the html to json.
url = "https://openlibrary.org/works/OL45883W.json"

response = RestClient.get "#{url}"

# To extract the description
puts JSON.parse(response.body)["description"]