require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "chichi@gmail.com", password: "123456", username: "Chichi")
User.create(email: "cloe@gmail.com", password: "123456", username: "Cloe")
User.create(email: "fran@gmail.com", password: "123456", username: "Fran")
User.create(email: "anuth@gmail.com", password: "123456", username: "Anuth")
User.create(email: "mathieu@gmail.com", password: "123456", username: "Mathieu")
User.create(email: "thomas@gmail.com", password: "123456", username: "Thomas")
User.create(email: "mariya@gmail.com", password: "123456", username: "Mariya")
User.create(email: "manon@gmail.com", password: "123456", username: "Manon")
User.create(email: "paal@gmail.com", password: "123456", username: "Paal")
User.create(email: "talina@gmail.com", password: "123456", username: "Talina")

Activity.create(title: "Tennis", description: Faker::TvShows::Simpsons.quote, location: "Melbourne Park", price: 60, group_size: 1, level: "Beginner", user_id: 2)
Activity.create(title: "Basketball", description: Faker::TvShows::RickAndMorty.quote, location: "Sydney Park", price: 30, group_size: 8, level: "Intermediate", user_id: 3)
Activity.create(title: "Football", description: Faker::Quote.most_interesting_man_in_the_world, location: "Geelong Park", price: 20, group_size: 12, level: "Intermediate", user_id: 4)
Activity.create(title: "Cycling", description: Faker::TvShows::Simpsons.quote, location: "Richmond Park", price: 40, group_size: 4, level: "Beginner", user_id: 6)
Activity.create(title: "Ballet", description: Faker::TvShows::Simpsons.quote, location: "Art Centre Melbourne", price: 55, group_size: 3, level: "Intermediate", user_id: 1)
Activity.create(title: "Running", description: Faker::Quote.most_interesting_man_in_the_world, location: "Keilor Park", price: 35, group_size: 8, level: "Advance", user_id: 7)
Activity.create(title: "Swimming", description: Faker::TvShows::Simpsons.quote, location: "St Kilda beach", price: 110, group_size: 4, level: "Beginner", user_id: 8)
Activity.create(title: "Badminton", description: Faker::Quote.most_interesting_man_in_the_world, location: "Wonderland Park", price: 95, group_size: 4, level: "Intermediate", user_id: 10)
Activity.create(title: "Trekking", description: FFaker::TvShows::Simpsons.quote, location: "Botanical Garden", price: 15, group_size: 30, level: "Advance", user_id: 4)
Activity.create(title: "Netball", description: Faker::TvShows::Simpsons.quote, location: "Brunswick Park", price: 25, group_size: 16, level: "Beginner", user_id: 5)
Activity.create(title: "Hockey", description: Faker::TvShows::Simpsons.quote, location: "Mornington Peninsula", price: 38, group_size: 10, level: "Intermediate", user_id: 1)
Activity.create(title: "Horse riding", description: Faker::TvShows::Simpsons.quote, location: "Flemington Racecourse", price: 85, group_size: 2, level: "Beginner", user_id: 5)
Activity.create(title: "Cricket", description: Faker::TvShows::Simpsons.quote, location: "Filztroy Park", price: 58, group_size: 22, level: "Intermediate", user_id: 3)
Activity.create(title: "Poker", description: Faker::TvShows::Simpsons.quote, location: "State Library Victoria", price: 34, group_size: 6, level: "Advance", user_id: 4)
Activity.create(title: "Baseball", description: Faker::Quote.most_interesting_man_in_the_world, location: "St Kilda Park", price: 38, group_size: 7, level: "Intermediate", user_id: 2)

Booking.create(spots_required: 1, activity_id: 1, user_id: 2)
Booking.create(activity_id: 1, user_id: 3)
Booking.create(activity_id: 2, user_id: 4)
Booking.create(activity_id: 3, user_id: 5)
Booking.create(activity_id: 4, user_id: 6)
Booking.create(activity_id: 5, user_id: 7)
Booking.create(activity_id: 6, user_id: 8)
Booking.create(activity_id: 7, user_id: 9)
Booking.create(activity_id: 8, user_id: 10)
Booking.create(activity_id: 9, user_id: 2)
Booking.create(activity_id: 10, user_id: 7)
