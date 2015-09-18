# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.delete_all
User.delete_all
Review.delete_all

b1 = Book.create(title: 'The Radleys', author: 'Matt Haig', genre: 'Drama', summary: 'Suburban vampires. Don\'t tell the children.')
b2 = Book.create(title: 'Ghosting', author: 'Keith Gray', genre: 'Young Adult', summary: 'Something about ghosts maybe.')
b3 = Book.create(title: 'Malarkey', author: 'Keith Gray', genre: 'Young Adult', summary: 'John Malarkey is framed.')

u1 = User.create(name: 'Jimbo Baggins', age: 26, location: 'New Hampshire')
u2 = User.create(name: 'Kathy Crichton', age: 67, location: 'Yorkshire')
u3 = User.create(name: 'Olly Parker', age: 15, location: 'London')

b1.reviews.create(content: 'Great', rating: 4, user: u2)
b2.reviews.create(content: 'Okay', rating: 3, user: u1)
b3.reviews.create(content: 'Really great', rating: 5, user: u3)

puts 'seeded. yay.'