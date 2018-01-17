# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "Banana Holder", description: "It holds bananas!", price_in_cents: 499)
Product.create(name: "Banana", description: "It a banana!", price_in_cents: 99)
Product.create(name: "Banana Protector", description: "It protects banana while traveling.", price_in_cents: 599)
Product.create(name: "Banana candy", description: "10lbs of Banana candy", price_in_cents: 1199)

Review.create(message: "Nice holder", product: Product.find(1))
Review.create(message: "Great for my headset", product: Product.find(1))
Review.create(message: "It had bruises all over :(", product: Product.find(2))
Review.create(message: "It works", product: Product.find(3))
Review.create(message: "0/10 would not recommend", product: Product.find(4))
