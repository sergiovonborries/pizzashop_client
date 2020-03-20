# The Great Pizza Shop Client

This is a project about a Pizza Shop Client, that is an admission test for the Truextend company.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Ruby version: 2.6.5
Ruby on Rails version: 6.0.2.1
Database: sqlite3 1.4

## Installing Ruby
We recommend to use [RVM](https://rvm.io) to handle the version of ruby, but [RBENV](https://github.com/rbenv/rbenv) can be used too.
We suggest to use `rvm` and after installing it, let's do some step:
```
rvm install 2.6.5
rvm use 2.6.5 --default
ruby -v
```
In the root path we should to create a gemset only to have the gems used in this project. Let's create and use the gemset.
The following line creates a new gemset and use it.
```
rvm use 2.6.5@pizzashop_client --create
```
The last step is to install Bundler
```
gem install bundler
```

## Running the Project
TO make this project runs it's necessary that the pizza_shop_service needs to be running on port 3000 as its own documentation explains.
To runs this client, you could use a command like this:
```
rails s -p 9000
```
Could be any other port.
In the root page of the project there is a page with two parameters that needs to be filled, the first one
```
Time Between calling the API Post in Seconds
```
This param is the time between every call to the API service.
```
How many times will repeat the Calling?
```
This param, it's the quantity of times that will call the API service.

## Random Orders
To achieve this, in the lib folder you will find two rb files, the json_generator that is a Module that generates a random order, with random products, each with their own ingredients and toppings, it's made with Faker gem and rand Class of Ruby.
The second rb file in the lib folder, is the json_consumer file, this Module use the gem Faraday to consume to post the order to the API service, it post the order and as a payload it receives the order itself with the corresponding data.

## How it works?
The client is quite simple, it just receive two params, with that it generates an API post to the service, the time between each call is handled by JavaScript, with the param it set a timer to execute ajax call to a action in a controller and make the call to the API service.
It will repeat this process until the corresponding param ends the iterations.
In any API call, it will append a TR in the http://localhost:9000/order for the visualization of the Order.

## Assumptions
I assume that the corresponding apis have already been consumed to obtain the ids of the ingredients, pizzas, chesee, sauces, other products, and the other information that is available in the apis of the service.


