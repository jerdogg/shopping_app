# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



food = Store.create(name: "Food")
# food = Store.find_by(name: "Food")

# food = Store.create(name: "Food", lists: [catagory: "jer"])

junk_food = food.lists.create(catagory: "Junk Food")
# junk_food = Store.find_by(name: "Food").lists.find_by(catagory: "Junk Food")
food.lists.create(catagory: "Meat")
food.lists.create(catagory: "Fruit")

# Junk Food
junk_food.items.create(name: "Ding Dong", description: "cake", quantity: 4, price: 1.50)
junk_food.items.create(name: "Chips", description: "cracker", quantity: 2, price: 3.50)
junk_food.items.create(name: "Cookies", description: "hard cake", quantity: 8, price: 0.50)

# Meat
junk_food.items.create(name: "Trout", description: "trout", quantity: 4, price: 5.00)
junk_food.items.create(name: "King Salmon", description: "salmon", quantity: 2, price: 10.00)

# fruit
junk_food.items.create(name: "Apple", description: "red round", quantity: 4, price: 1.00)
junk_food.items.create(name: "bananna", description: "yellow", quantity: 2, price: 1.00)

# should be added due to validation
junk_food.items.create(name: "car", description: "yellow", quantity: nil, price: 1.00)

