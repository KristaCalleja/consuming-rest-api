require 'rest-client'
require 'json'

url = "https://openlibrary.org/api/books?bibkeys"
ISBN = "ISBN:0201558025"

response = RestClient.get "#{url}=#{ISBN}&format=json"

# puts JSON.parse(response.body)[:info_url]
puts response.body[2]