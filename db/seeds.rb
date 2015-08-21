# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cocktail.destroy_all
Ingredient.destroy_all

cocktails = [
  {
    name: "Old Fashioned",
    },
  {
    name: "Daiquiri",
    },
  {
    name: "Margarita",
    },
  {
    name: "Sidecar",
    },
  {
    name: "French 75",
    },
  {
    name: "Bloody Mary",
    },
  {
    name: "Irish Coffee",
    },
  {
    name: "Jack Rose",
    },
  {
    name: "Negroni",
    }
]

ingredients = %w(lemon ice mint leaves redbull jagermeister sugar tonic gin rhum)
ingredients.each { |ingredient| Ingredient.create(name: ingredient) }

cocktails.each { |cocktail| Cocktail.create(cocktail) }
