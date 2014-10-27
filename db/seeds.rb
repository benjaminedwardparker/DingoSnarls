# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Dingo.create(name: "Joe", habitat: "Plains", password: "12345", age: 4, photo_url: "http://a-z-animals.com/media/animals/images/470x370/dingo1.jpg")
Dingo.create(name: "Tina", habitat: "Desert", password: "pword", age: 3, photo_url: "http://www.almaparkzoo.com.au/apz/wp-content/uploads/2013/05/australian-wild-dog-dingo-teale-shapcott-2.jpg")
Dingo.create(name: "George", habitat: "Jungle", password: "pword", age: 2, photo_url: "http://www.featherdale.com.au/featherdale3-media/pageimages/dingo/dingoprofile1_2.jpg")
Dingo.create(name: "Camille", habitat: "River Bank", password: "pword", age: 5, photo_url: "http://leemakennels.com/blog/wp-content/uploads/2012/01/4708674156_974037ff7a_b.jpg")
Dingo.create(name: "Stephen", habitat: "Swamp", password: "pword", age: 1, photo_url: "http://media-1.web.britannica.com/eb-media//16/12316-050-C0314D67.jpg")
Dingo.create(name: "Benjamin", habitat: "City", password: "pword", age: 9, photo_url: "http://mentalfloss.com/sites/default/files/styles/article_640x430/public/dingo-istock1_5.jpg")

Snarl.create(dingo_id: 1, post: "I just ate a baby", created_at: 13.minutes.ago)
Snarl.create(dingo_id: 1, post: "I'm about to take a nap", created_at: 20.minutes.ago)
Snarl.create(dingo_id: 1, post: "I miss Jill", created_at: 10.minutes.ago)
Snarl.create(dingo_id: 1, post: "I snarl too much.", created_at: 15.minutes.ago)
Snarl.create(dingo_id: 2, post: "I'm hungry", created_at: 15.minutes.ago)
Snarl.create(dingo_id: 2, post: "What do dingoes feed their babies?", created_at: 12.minutes.ago)
Snarl.create(dingo_id: 2, post: "Who is Jill?", created_at: 9.minutes.ago)
Snarl.create(dingo_id: 3, post: "I've decided to start snarlin.", created_at: 8.minutes.ago)
Snarl.create(dingo_id: 3, post: "What, no buttsniffers?", created_at: 5.minutes.ago)
Snarl.create(dingo_id: 3, post: "Oooo, a squirell!", created_at: 2.minutes.ago)
Snarl.create(dingo_id: 4, post: "I am such a lovely dingo.", created_at: 20.minutes.ago)
Snarl.create(dingo_id: 4, post: "I rule!", created_at: 12.minutes.ago)
Snarl.create(dingo_id: 4, post: "Other dingoes drool.", created_at: 11.minutes.ago)
Snarl.create(dingo_id: 5, post: "I am not a smart dingo.", created_at: 2.minutes.ago)
Snarl.create(dingo_id: 5, post: "Mama said something about days", created_at: 7.minutes.ago)
Snarl.create(dingo_id: 5, post: "When is lunch?", created_at: 17.minutes.ago)
Snarl.create(dingo_id: 6, post: "I love my fellow dingos.", created_at: 25.minutes.ago)
Snarl.create(dingo_id: 6, post: "Dingos sure are loud", created_at: 15.minutes.ago)
Snarl.create(dingo_id: 6, post: "Why do dingoes sniff butts?", created_at: 5.minutes.ago)

Buttsniff.create(dingo_id: 1, buttsniffee_id: 2)
Buttsniff.create(dingo_id: 1, buttsniffee_id: 3)
Buttsniff.create(dingo_id: 1, buttsniffee_id: 6)
Buttsniff.create(dingo_id: 2, buttsniffee_id: 1)
Buttsniff.create(dingo_id: 2, buttsniffee_id: 5)
Buttsniff.create(dingo_id: 3, buttsniffee_id: 2)
Buttsniff.create(dingo_id: 3, buttsniffee_id: 4)
Buttsniff.create(dingo_id: 4, buttsniffee_id: 1)
Buttsniff.create(dingo_id: 4, buttsniffee_id: 6)
Buttsniff.create(dingo_id: 5, buttsniffee_id: 1)
Buttsniff.create(dingo_id: 5, buttsniffee_id: 3)
Buttsniff.create(dingo_id: 6, buttsniffee_id: 2)
Buttsniff.create(dingo_id: 6, buttsniffee_id: 4)
