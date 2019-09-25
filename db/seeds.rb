# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Realtor.create(name: "Joy Fields", years_experience: 7, brokerage: "Remax")
Realtor.create(name: "Scotchie Cochran", years_experience: 20, brokerage: "Keller Williams")
Realtor.create(name: "Felicia Bright", years_experience: 14, brokerage: "Remax")

Property.create(address: "1151 Jimson Circle, Conyers, GA", bedrooms: 4, garage: true)
Property.create(address: "12 Kings Row, Atlanta, GA", bedrooms: 3, garage: false)
Property.create(address: "3898 Sunshine Street, Decatur, GA", bedrooms: 3, garage: true)