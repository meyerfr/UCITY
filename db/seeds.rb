# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts 'clean Database'
# Proposal.destroy_all
# Project.destroy_all
# Government.destroy_all

puts 'create Governments'
Government.create!(country: 'Germany')
Government.create!(country: 'Poland')
Government.create!(country: 'England')

puts 'create Projects and for each Project proposals'
Project.create!(government_id: Government.first.id, street: 'Margarethen Straße', city: 'Berlin', postalcode: '11111')
Proposal.create!(project_id: Project.find(1).id, architect: 'Gustav', start: '2021-05-01', end: '2025-01-20', price: '2.500.000.000', pos: 'sustainability', name: 'social housing', photo: 'https://res.cloudinary.com/dqssam2go/image/upload/v1570093210/Projekt1_Bild1.jpg')
Proposal.create!(project_id: Project.find(1).id, architect: 'Brigitte', start: '2021-05-01', end: '2025-01-20', price: '2.000.000.000', pos: 'eco-friendly', name: 'social housing', photo: 'https://res.cloudinary.com/dqssam2go/image/upload/v1570093210/Projekt2_Bild1.jpg')
Proposal.create!(project_id: Project.find(1).id, architect: 'Klaus', start: '2021-05-01', end: '2025-01-20', price: '3.000.000.000', pos: 'safty', name: 'social housing')

Project.create!(government_id: Government.first.id, street: 'Alexanderplatz', city: 'Berlin', postalcode: '22222')
Proposal.create!(project_id: Project.find(2).id, architect: 'Sirin', start: '2021-05-01', end: '2025-01-20', price: '2.500.000.000', pos: 'sustainable', name: '', photo: 'https://res.cloudinary.com/dqssam2go/image/upload/v1570102414/Projekt3_Bild1.jpg')
Proposal.create!(project_id: Project.find(2).id, architect: 'Alex', start: '2021-05-01', end: '2025-01-20', price: '2.500.000.000', pos: 'sustainable', name: '', photo: 'https://res.cloudinary.com/dqssam2go/image/upload/v1570102414/Projekt4_Bild1.jpg')
Proposal.create!(project_id: Project.find(2).id, architect: 'Christopher', start: '2021-05-01', end: '2025-01-20', price: '2.500.000.000', pos: 'sustainable', name: '')

Project.create!(government_id: Government.first.id, street: 'Oststraße', city: 'Berlin', postalcode: '33333')
Proposal.create!(project_id: Project.find(3).id, architect: 'Tom', start: '2021-05-01', end: '2025-01-20', price: '2.500.000.000', pos: 'sustainable', name: '', photo: 'https://res.cloudinary.com/dqssam2go/image/upload/v1570102414/Projekt5_Bild1.jpg')
Proposal.create!(project_id: Project.find(3).id, architect: 'Paul', start: '2021-05-01', end: '2025-01-20', price: '2.500.000.000', pos: 'sustainable', name: '', photo: 'https://res.cloudinary.com/dqssam2go/image/upload/v1570102414/Projekt6_Bild1.jpg')
Proposal.create!(project_id: Project.find(3).id, architect: 'Frank', start: '2021-05-01', end: '2025-01-20', price: '2.500.000.000', pos: 'sustainable', name: '')

Project.create!(government_id: Government.first.id, street: 'Goethestraße', city: 'Berlin', postalcode: '11111')
Proposal.create!(project_id: Project.find(4).id, architect: 'Jonas', start: '2021-05-01', end: '2025-01-20', price: '2.500.000.000', pos: 'sustainable', name: '', photo: 'https://res.cloudinary.com/dqssam2go/image/upload/v1570102419/Projekt7_Bild1.jpg')
Proposal.create!(project_id: Project.find(4).id, architect: 'Tim', start: '2021-05-01', end: '2025-01-20', price: '2.500.000.000', pos: 'sustainable', name: '', photo: 'https://res.cloudinary.com/dqssam2go/image/upload/v1570102419/Projekt8_Bild1.jpg')
Proposal.create!(project_id: Project.find(4).id, architect: 'Karl der Große', start: '2021-05-01', end: '2025-01-20', price: '2.500.000.000', pos: 'sustainable', name: '')

