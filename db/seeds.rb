# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[Category, User, Appointment].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE TABLE #{model.table_name} RESTART IDENTITY CASCADE")
end

require 'date'

cat1 = Category.create!(
  name: "blood glucose/fats"
)
cat2 = Category.create!(
  name: "blood pressure"
)
cat3 = Category.create!(
  name: "eye screening"
)
cat4 = Category.create!(
  name: "feet and legs"
)
cat5 = Category.create!(
  name: "kidney function"
)
cat6 = Category.create!(
  name: "dietary advice"
)
cat7 = Category.create!(
  name: "emotional/psychological support"
)
cat8 = Category.create!(
  name: "group education"
)

user1 = User.create!(
  username: "Gerald",
  email: "Gerald@hotmail.com",
  medication: "metformin",
  gp_name: "Dr. Raj",
  gp_address: "12-14 Nightingale House, 50 Thomas More Street, London, E1W 1UA",
  diagnosis_date: Date.new(2015, 12, 8),
  diabetes_type: 2,
  emergency_name: "Christine Baker",
  emergency_number: "02085578243",
  password: "password",
  password_confirmation: "password"
)

Appointment.create!(
  location: "Royal London hospital, Whitechapel Rd, Whitechapel, London E1 1BB",
  lat: "51.519",
  lng: "-.0581",
  date_time: DateTime.new(2017,5,3,14,20,0),
  specialist: "Sue Parker - Dietician",
  comment: "Must remember to bring the list of meals I've had in the last week to discuss.",
  user: user1,
  category_ids: [cat6.id, cat2.id]
)

Appointment.create!(
  location: "Royal London hospital, Whitechapel Rd, Whitechapel, London E1 1BB",
  lat: "51.519",
  lng: "-.0581",
  date_time: DateTime.new(2017,5,23,11,0,6),
  specialist: "Dr. Patel",
  comment: "Get grandson to pick me up after appointment and bring list of all medication",
  user: user1,
  category_ids: [cat3.id]
)

Appointment.create!(
  location: "Mile End Hospital, Bancroft Rd, London E1 4DG",
  lat: "51.5245068",
  lng: "-.0426476",
  date_time: DateTime.new(2017,6,4,9,30,6),
  specialist: "Phillip Manson",
  comment: "Group session",
  user: user1,
  category_ids: [cat8.id]
)
