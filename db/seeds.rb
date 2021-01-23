require 'open-uri'
puts 'cleaning database 🧼'
Ingredient.delete_all
Cocktail.delete_all
Dose.delete_all

puts ' ✨ database clean ✨'


url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
json = open(url).read
result = JSON.parse(json)

puts 'adding ingredients 🫒 🍒 🥝'

result['drinks'].each do |drink|
  Ingredient.create(name: drink['strIngredient1'])
end

puts 'ingredients added ✅'

puts 'creating cocktail names 🍸'
10.times do
  cocktail = Cocktail.create(
      name: Faker::JapaneseMedia::DragonBall.character
    )
end

puts 'cocktail names added ✅'

