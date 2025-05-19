# CS361-Microservice-A
Microservice A implementation 

# Description

Microservice "A" will determine the "rating" of a stock. To evalulate the performance, the microservice takes as input a HTTP post request with
the stock quantity, current price, and purchase price. It then returns in the HTTP response an integer of the rating.

# Tests

ruby test_client.rb

# Communication Contract
--------------------------------------------------------------------------------------------------------------------------------------------------------------
# Input
The program takes as input the stock quantity, current price, and purchase price. These are sent in an HTTP Post Request to the microservice.
Here is an example of what a  call to the program will look like (in Ruby):

uri = URI.parse("http://localhost:3000/performance")  

data = {
  quantity: 10,
  purchase_price: 5,
  current_price: 6
}

http = Net::HTTP.new(uri.host, uri.port)

request = Net::HTTP::Post.new(uri.path, { 'Content-Type' => 'application/json' })

request.body = data.to_json     

# Output

The microservice will send an HTTP Response with a plain text integer of the stock rating, formatted as a JSON. Here is an example of what a response call will look like: 

response = http.request(request)
puts "Response code: #{response.code}"
puts "Response body: #{response.body}"

Then the output will be: 
Response code: 200
Response body: {"result":125}

# UML Diagram

![UML2](https://github.com/user-attachments/assets/070fea90-cad5-4b39-ab85-99fd4f0f122b)

# Sources Cited:

Rails 6 API Tutorial - Create project and routing p.1
https://www.youtube.com/watch?v=6KqbPJtA5O8&list=PLbTv9eGiI03u1-JFkFpPGsR_hMre6WX3e&ab_channel=RailsPro 
Routes in ruby on rails
https://www.geeksforgeeks.org/routes-in-ruby-on-rails/
How to Build an API With Ruby on Rails?
https://www.geeksforgeeks.org/how-to-build-an-api-with-ruby-on-rails/
Action Controller Overview
https://guides.rubyonrails.org/action_controller_overview.html






