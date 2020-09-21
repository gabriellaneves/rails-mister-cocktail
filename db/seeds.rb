# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")


require 'json'
require 'open-uri'

# puts "Generating random ingredients..."

Ingredient.delete_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

ingredients = JSON.parse(open(url).read)

# ingredients.each do |ingredient|
#   ingredient[1].each do |new_ing|
#     Ingredient.create!(name: new_ing.values[0])
#   end

item = ingredients['drinks']
item.each do |object|
    new_ingredient = Ingredient.create!(name:object["strIngredient1"])
    puts "Creating #{new_ingredient.name}"
end

# puts "Finished generating ingredients"