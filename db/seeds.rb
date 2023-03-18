# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.create([{
    name: "Cjs",
    address: "2040"
},
{
    name: "BigSquare",
    address: "4050"

},
{
    name: "Delous",
    address: "1820"
},
{
    name: "SocialSquare",
    address: "3090"
},
{
    name: "Nyama mama",
    address: "4070"
}
])

Pizza.create([{
    name: "pepperoni",
ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni"
},
{
    name: "hawwian",
    ingredients: "Dough, Tomato Sauce, Cheese, Pinnaple" 
},
{
    name: "nyamachoma",
    ingredients: "Dough, Tomato Sauce, Cheese, nyamachoma"
},
name: "vegetarian",
ingredients: "Dough, Tomato Sauce, Cheese, vegetable"

])

RestaurantPizza.create([{
    price: 12,
    pizza_id: 1,
    restaurant_id: 1
},
{
    price: 8,
    pizza_id: 2,
    restaurant_id: 3
},
{
    price: 15,
    pizza_id: 3,
    restaurant_id: 2
},
{
    price: 20,
    pizza_id: 4,
    restaurant_id: 2
}])

