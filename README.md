# README

## Intriduction.
This is a restaurant api
It has 3 tables restaurant,pizza,restaurantpizza

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## Functionality

## PIZZA 
This is a restaurant  and pizza  RESTFful API

## Getting started 

To get started  with the project this are steps to follow:
You create app from scratch using the command
        1.rails new Restaurant --api --minimal --skip-javascript
        2.cd to the app created

        3.bundle install to install all the dependancies.

        4.rails db:migrate to create a migration.

        5.rails db:seed to seed th data.

        6.rails s to start the server .

* The server will run on `http://localhost:3000`

## Routes
 
The following routes are available
 
* GET /restaurants: Returns a list of all restaurants in JSON format.
* GET /restaurants/:id: Returns a restaurant and its associated pizzas in JSON format. If the restaurant is not found, it returns an error with status code 404.

* DELETE /restaurants/:id: Deletes a restaurant and its associated restaurant pizzas from the database. If the restaurant is not found, it returns an error with status code 404.

* GET /pizzas: Returns a list of all pizzas in JSON format.

* * POST /restaurant_pizzas: it creates a new RestaurantPizza that is associated with an existing Pizza and Restaurant.if it is not created succesfully it returns an error.

## Licences

This code is released under the MIT License.

