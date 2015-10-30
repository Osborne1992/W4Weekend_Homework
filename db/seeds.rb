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
Recipe.create!(name: "Garlic Bread", category_id: 1, vegetarian: true)
Recipe.create!(name: "Chicken Tikka Masala", category_id: 2, vegetarian: false)
Recipe.create!(name: "Pumpkin Pie", category_id: 3, vegetarian: true)
Recipe.create!(name: "Apple Slices", category_id: 4, vegetarian: true)
Recipe.create!(name: "Lentil", category_id: 5, vegetarian: true)
Recipe.create!(name: "Chicken Caesar", category_id: 6, vegetarian: false)
Recipe.create!(name: "Marmite", category_id: 7, vegetarian: true)

Ingredient.delete_all
Ingredient.create!(name: "Bread")
Ingredient.create!(name: "Onion")
Ingredient.create!(name: "Tomato")
Ingredient.create!(name: "Chicken")
Ingredient.create!(name: "Marmite")
Ingredient.create!(name: "Pumpkin")
