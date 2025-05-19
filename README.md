# CS361-Microservice-A
Microservice A implementation 

# Description

Microservice "A" will determine the "rating" of a stock. To evalulate the performance, the microservice takes as input a HTTP post request with
the stock quantity, current price, and purchase price. It then returns in the HTTP response an integer of the rating.

# Tests

ruby test_client.rb

# UML Diagram



![UML2](https://github.com/user-attachments/assets/070fea90-cad5-4b39-ab85-99fd4f0f122b)


# Communication Contract

# Input
The program takes as input the stock quantity, current price, and purchase price. These are sent in an HTTP Post Request to the microservice.

# Output

The microservice will send an HTTP Response with a plain text integer of the stock rating, formatted as a JSON.





