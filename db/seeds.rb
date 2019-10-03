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
Proposal.create!(project_id: Project.find(1).id, architect: 'Gustav')
Proposal.create!(project_id: Project.find(1).id, architect: 'Brigitte')
Proposal.create!(project_id: Project.find(1).id, architect: 'Klaus')

Project.create!(government_id: Government.first.id, street: 'Alexanderplatz', city: 'Berlin', postalcode: '22222')
Proposal.create!(project_id: Project.find(2).id, architect: 'Sirin')
Proposal.create!(project_id: Project.find(2).id, architect: 'Alex')
Proposal.create!(project_id: Project.find(2).id, architect: 'Christopher')

Project.create!(government_id: Government.first.id, street: 'Oststraße', city: 'Berlin', postalcode: '33333')
Proposal.create!(project_id: Project.find(3).id, architect: 'Tom')
Proposal.create!(project_id: Project.find(3).id, architect: 'Paul')
Proposal.create!(project_id: Project.find(3).id, architect: 'Frank')

Project.create!(government_id: Government.first.id, street: 'Goethestraße', city: 'Berlin', postalcode: '11111')
Proposal.create!(project_id: Project.find(4).id, architect: 'Jonas')
Proposal.create!(project_id: Project.find(4).id, architect: 'Tim')
Proposal.create!(project_id: Project.find(4).id, architect: 'Karl der Große')

