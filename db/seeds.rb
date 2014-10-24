# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


joe = Dingo.create(name: "Joe", habitat: "Plains", password: "12345", age: 4)
tina = Dingo.create(name: "Tina", habitat: "Desert", password: "pword", age: 3)

Snarl.create(dingo_id: 1, post: "I just ate a baby")
Snarl.create(dingo_id: 1, post: "I'm about to take a nap")
Snarl.create(dingo_id: 1, post: "I miss Jill")
Snarl.create(dingo_id: 2, post: "I'm hungry")
Snarl.create(dingo_id: 2, post: "What do dingoes feed their babies?")
