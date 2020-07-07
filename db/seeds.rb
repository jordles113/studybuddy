# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

f1 = Flashcard.create(name: "Rails Routing", definition: "A rails route maps a URL to a controller and action")
f2 = Flashcard.create(name: "Convention over Configuration", definition: "builds out standardized processes (like implicit view rendering) to make dev life easier")
f3 = Flashcard.create(name: "Static Route", definition: "renders a view that does not change. Typically you would not send params to it ex. site's about or contact pages")