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
Recipe.create!(name: "Garlic Bread", vegetarian: true, instructions: "Take some bread, spread garlic butter on the slices, pop in oven for 5-10 minutes on 180 C.")
Recipe.create!(name: "Chicken Tikka Masala", vegetarian: false, instructions: "Brown some chicken, add diced onions, boil some rice, serve.")
Recipe.create!(name: "Pumpkin Pie", vegetarian: true, instructions: "Take a pumpking, make a pie.")
Recipe.create!(name: "Apple Slices", vegetarian: true, instructions: "Slice apples. Did you really need this for that?")
Recipe.create!(name: "Lentil", vegetarian: true, instructions: "Buy it from a shop. It would be easier.")
Recipe.create!(name: "Chicken Caesar", vegetarian: false, instructions: "Add cooked diced chicken to a caesar salad.")
Recipe.create!(name: "Marmite", vegetarian: true, instructions: "GLORIOUS MARMITE! SPREAD BUTTER ON BREAD, ADD MARMITE! PRAISE BE UNTO MARMITE")

Ingredient.delete_all
Ingredient.create!(name: "Bread")
Ingredient.create!(name: "Onion")
Ingredient.create!(name: "Tomato")
Ingredient.create!(name: "Chicken")
Ingredient.create!(name: "Marmite")
Ingredient.create!(name: "Pumpkin")

User.delete_all
User.create!(email: "simon@simon.simon", password: "password", role: "admin")

['registered', 'banned', 'moderator', 'admin'].each do |role|
  Role.find_or_create_by({name: role})
end
