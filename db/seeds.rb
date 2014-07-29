# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "Howard")
User.create(username: "Sheldon")
User.create(username: "Leonard")

Tweet.create(content: "MIT", Howard: 0)
Tweet.create(content: "Bazinga", Sheldon: 1)
Tweet.create(contnent: "Contacts", Leonard: 2)