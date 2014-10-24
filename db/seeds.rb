# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


joe = Dingo.create(name: "Joe", habitat: "Plains", password: "12345", age: 4)
tina = Dingo.create(name: "Tina", habitat: "Desert", password: "pword", age: 3)

Snarl.create(dingo_id: 1, post: "I just ate a baby", created_at: 14.minutes.ago)
Snarl.create(dingo_id: 1, post: "I'm about to take a nap", created_at: 20.minutes.ago)
Snarl.create(dingo_id: 1, post: "I miss Jill", created_at: 10.minutes.ago)
Snarl.create(dingo_id: 2, post: "I'm hungry", created_at: 15.minutes.ago)
Snarl.create(dingo_id: 2, post: "What do dingoes feed their babies?", created_at: 12.minutes.ago)
