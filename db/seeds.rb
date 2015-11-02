# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all
Category.create!(name: "Starters")
Category.create!(name: "Mains")
Category.create!(name: "Desserts")
Category.create!(name: "Snacks")
Category.create!(name: "Soups")
Category.create!(name: "Salads")
Category.create!(name: "Sandwiches")

Recipe.delete_all
Recipe.create!(name: "Garlic Bread", vegetarian: true)
Recipe.create!(name: "Chicken Tikka Masala", vegetarian: false)
Recipe.create!(name: "Pumpkin Pie", vegetarian: true)
Recipe.create!(name: "Apple Slices", vegetarian: true)
Recipe.create!(name: "Lentil", vegetarian: true)
Recipe.create!(name: "Chicken Caesar", vegetarian: false)
Recipe.create!(name: "Marmite", vegetarian: true)

Ingredient.delete_all
Ingredient.create!(name: "Bread")
Ingredient.create!(name: "Onion")
Ingredient.create!(name: "Tomato")
Ingredient.create!(name: "Chicken")
Ingredient.create!(name: "Marmite")
Ingredient.create!(name: "Pumpkin")
