# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p 'Seeding db'
Track.destroy_all
track1 = Track.create!(user_id: 1, artist: 'Jin Yinang', title: 'prank calls', url:'https://www.youtube.com/watch?v=6uZL9xlm3To')