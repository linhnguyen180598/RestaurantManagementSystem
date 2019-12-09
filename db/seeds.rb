# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'admin',email: 'admin@admin.com', phone: '0123456789', admin: true, password: '123123')
User.create!(name: 'user1',email: 'user1@gmail.com', phone: '0112312312', admin: false, password: '123123')
User.create!(name: 'user2',email: 'user2@gmail.com', phone: '0123456123', admin: false, password: '123123')
User.create!(name: 'user3',email: 'user3@gmail.com', phone: '0123451235', admin: false, password: '123123')
User.create!(name: 'user4',email: 'user4@gmail.com', phone: '0124567655', admin: false, password: '123123')

Table.create(table_number: 1, capacity: 10, reserved: false)
Table.create(table_number: 2, capacity: 20, reserved: false)
Table.create(table_number: 3, capacity: 12, reserved: false)
Table.create(table_number: 4, capacity: 23, reserved: false)
Table.create(table_number: 5, capacity: 50, reserved: false)

Reservation.create(user_id: 2, guest_number: 10, book_time: Time.now + 1.day)
Reservation.create(user_id: 3, guest_number: 10, book_time: Time.now + 2.day)
Reservation.create(user_id: 4, guest_number: 10, book_time: Time.now + 3.day)
