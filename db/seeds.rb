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
  name: "blood glucose/fats",
  image: "images/bloodglucose-fat.png",
  description: "You should have your blood glucose and blood fats (such as cholesterol and triglycerides) levels measured at least once a year. An HbA1c blood test measures your overall blood glucose control over the previous three months and helps you and your diabetes healthcare team set your own target. Working towards and reaching your targets for blood glucose and blood fats is an important part of managing your diabetes. Your healthcare team is there to offer advice and support to help you reach your targets, and reduce your risk of developing long-term complications."
)
cat2 = Category.create!(
  name: "blood pressure",
  image: "images/bloodpressure.png",
  description: "Your blood pressure should be measured and recorded at least once a year, and you should agree a personal target that is right for you."
)
cat3 = Category.create!(
  name: "eye screening",
  image: "images/eyescreening.png",
  description: "Your eyes should be screened for signs of retinopathy every year by your local diabetic eye screening service. A special camera is used to take a photo of your retina (at the back of your eye) and a specialist will look for any changes. This free test is different to the checks carried out by an optician. If you notice any sight changes between appointments it is important to contact your optometrist or GP. People with diabetes at higher risk of developing retinopathy and if left undetected and untreated, it can lead to blindness. That’s why it’s so important that you have your eyes checked annually by a specialist."
)
cat4 = Category.create!(
  name: "feet and legs",
  image: "images/podiatry.png",
  description:"The skin, circulation and nerve supply of your feet and legs should be examined at least once a year, normally by your GP or practice nurse, but also if problems arise or on admission to hospital. You should be told if you are at risk of foot problems, how serious they are and if you need to be referred to a specialist podiatrist or foot clinic."
)
cat5 = Category.create!(
  name: "kidney function",
  image: "images/kidney.png",
  description:"You should have two tests to measure your kidney function every year: a urine test for protein (a sign of possible kidney problems) and a blood test to measure kidney function. People with diabetes are at increased risk of kidney problems. In the very early stages there are usually no symptoms, so having your kidney function tested is really important to pick up any problems early, before they develop and you begin to feel unwell."
)
cat6 = Category.create!(
  name: "dietary advice",
  image: "images/diet.png",
  description:"You should receive ongoing dietary advice from a healthcare professional with appropriate expertise in nutrition, and be referred to a dietitian for tailored advice if necessary. You should have the opportunity to check your weight and get the support and information you need to manage your weight."
)
cat7 = Category.create!(
  name: "emotional/psychological support",
  image: "images/emotionalsupport.png",
  description: "Being diagnosed with diabetes and living with a long term condition can be difficult. You should be able to talk about your issues and concerns with specialist healthcare professionals. Diabetes can be hard, whether you’ve just been diagnosed or have lived with the condition for years. It’s important that you are able to talk about your issues and concerns with specialist healthcare professionals, so that they can support and advise you in the right way."
)
cat8 = Category.create!(
  name: "group education",
  image: "images/group.png",
  description: "You should be offered a diabetes education course when you are diagnosed, or as part of a yearly refresher, to help you understand and manage your diabetes. If you are unable or don’t wish to attend a group course, you should be offered a suitable alternative."
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
