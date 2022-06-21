# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "chichi@gmail.com", password: "123456", username: "chichi")
Activity.create(title: "Tennis", description: "1 class in 1:1", location: "Melbourne Park", price: 20, group_size: 1, level: "beginner", user_id: 2)
Booking.create(activity_id: 1, user_id: 2)
