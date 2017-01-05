Product.create(model: "IPhone", brand: "Apple", release_year: 2008)
Product.create(model: "Note", brand: "Samsung", release_year: 2010)
Product.create(model: "Rockr", brand: "Motorola", release_year: 2007)
Product.create(model: "IPad", brand: "Apple", release_year: 2009)
Product.create(model: "Watch", brand: "Apple", release_year: 2015)
Product.create(model: "Thermopen", brand: "Thermoworks", release_year: 2006)

LineItem.create(product_id: 1, quantity: 4, price: 500)
LineItem.create(product_id: 1, quantity: 7, price: 400)
LineItem.create(product_id: 2, quantity: 3, price: 300)
LineItem.create(product_id: 2, quantity: 5, price: 400)
LineItem.create(product_id: 3, quantity: 10, price: 200)
LineItem.create(product_id: 3, quantity: 39, price: 150)
LineItem.create(product_id: 4, quantity: 20, price: 700)
LineItem.create(product_id: 4, quantity: 34, price: 550)
LineItem.create(product_id: 5, quantity: 59, price: 525)
LineItem.create(product_id: 5, quantity: 66, price: 420)
LineItem.create(product_id: 6, quantity: 14, price: 70)
LineItem.create(product_id: 6, quantity: 25, price: 50)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
