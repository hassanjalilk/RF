# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Product.create(name: "Microwave", description: "used", price_in_cents: 100, url:"http://upload.wikimedia.org/wikipedia/commons/7/7e/NN-K125MBGPG_Grill-Mikrowelle_silber_Panasonic.png")
Product.create(name: "Dishwasher", description: "new", price_in_cents: 200, url:"http://upload.wikimedia.org/wikipedia/commons/7/7e/NN-K125MBGPG_Grill-Mikrowelle_silber_Panasonic.png")
Product.create(name: "Dryer", description: "new", price_in_cents: 50, url:"http://upload.wikimedia.org/wikipedia/commons/7/7e/NN-K125MBGPG_Grill-Mikrowelle_silber_Panasonic.png")
Product.create(name: "Washer", description: "used", price_in_cents: 300, url:"http://upload.wikimedia.org/wikipedia/commons/7/7e/NN-K125MBGPG_Grill-Mikrowelle_silber_Panasonic.png")

