require 'net/http'
require 'uri'
require 'json'

# Define the URI of the Rails microservice
uri = URI.parse("http://localhost:3000/performance")

# Define the data to send
data = {
  quantity: 10,
  purchase_price: 20,
  current_price: 25
}

# Create the HTTP POST request
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Post.new(uri.path, { 'Content-Type' => 'application/json' })
request.body = data.to_json

# Send the request and get the response
response = http.request(request)

# Output the response from the microservice
puts "Response code: #{response.code}"
puts "Response body: #{response.body}"