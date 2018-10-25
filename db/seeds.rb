# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


10.times do |index|
	citi = City.create!(name: Faker::ElderScrolls.city)
end

20.times do |index|
	citi = City.offset(rand(City.count)).first 
	doc = Doctor.new(first_name: Faker::Name.first_name, last_name: Faker::Name.name, postal_code: Faker::Address.zip_code, city_id: citi.id)
	doc.save
end

25.times do |index|
	citi = City.offset(rand(City.count)).first 
	pat = Patient.create!(first_name: Faker::RickAndMorty.location, last_name: Faker::RickAndMorty.quote, city_id: citi.id)
end

25.times do |index|
	citi = City.offset(rand(City.count)).first 
	doc = Doctor.offset(rand(Doctor.count)).first 
	pat = Patient.offset(rand(Patient.count)).first 
	rdv = Appointment.create!(appointment_date: index, doctor: doc, patient: pat, city_id: citi.id )
end

10.times do |index|
	doc = Doctor.offset(rand(Doctor.count)).first 
	spec = Specialty.create!(name: Faker::Pokemon.name)
	spec.doctor_ids = doc.id
end

