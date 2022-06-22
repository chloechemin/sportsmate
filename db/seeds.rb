# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "chichi@gmail.com", password: "123456", username: "chichi")
User.create(email: "cloe@gmail.com", password: "123456", username: "cloe")
User.create(email: "fran@gmail.com", password: "123456", username: "fran")
User.create(email: "anuth@gmail.com", password: "123456", username: "anuth")
User.create(email: "kathy@gmail.com", password: "123456", username: "kathy")
User.create(email: "corey@gmail.com", password: "123456", username: "corey")
User.create(email: "tim@gmail.com", password: "123456", username: "tim")
User.create(email: "manon@gmail.com", password: "123456", username: "manon")
User.create(email: "paal@gmail.com", password: "123456", username: "paal")
User.create(email: "talina@gmail.com", password: "123456", username: "talina")

Activity.create(title: "Tennis", description: "1 class in 1:1", location: "Melbourne Park", price: 20, group_size: 1, level: "beginner", user_id: 2)
Activity.create(title: "basketball", description: "1 class in 3:3", location: "Sydney Park", price: 20, group_size: 10, level: "intermediate", user_id: 3)
Activity.create(title: "netball", description: "1 class in 5:5", location: "Brunswick Park", price: 20, group_size: 20, level: "advance", user_id: 5)
Activity.create(title: "football", description: "1 class in 11:11", location: "Geelong Park", price: 20, group_size: 100, level: "intermediate", user_id: 4)
Activity.create(title: "table tennis", description: "1 class in 1:1", location: "Richmond Park", price: 20, group_size: 30, level: "beginner", user_id: 6)
Activity.create(title: "swimming", description: "1 class in 1:1", location: "St Kilda Park", price: 20, group_size: 5, level: "intermediate", user_id: 5)
Activity.create(title: "running", description: "1 class in 100:100", location: "Keilor Park", price: 20, group_size: 8, level: "advance", user_id: 7)
Activity.create(title: "poker", description: "1 class in 1:1", location: "Wonderland Park", price: 20, group_size: 10, level: "intermediate", user_id: 10)
Activity.create(title: "glazing", description: "1 class in 1:1", location: "Mountain", price: 20, group_size: 20, level: "beginner", user_id: 8)
Activity.create(title: "walking", description: "1 class in 1:1", location: "Backyard", price: 20, group_size: 30, level: "advance", user_id: 4)

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
