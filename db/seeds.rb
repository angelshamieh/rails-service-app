# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  # Character.create(name: 'Luke', movie: movies.first)

   Service.destroy_all
   User.destroy_all

puts 'creating users..'

brownie = User.create!(email: 'brownie@brownie.test', password: '123456')
rabea = User.create!(email: 'rabea@rabea.test', password: '123456')
angel = User.create!(email: 'angel@test.test', password: '123456')
eyal = User.create!(email: 'eyal@eyal.test', password: '123456')
reem = User.create!(email: 'reem@reem.test', password: '123456')
mirna = User.create!(email: 'mirna@mirna.test', password: '123456')
bobi = User.create!(email: 'bobi@bobi.test', password: '123456')
toti = User.create!(email: 'toti@toti.test', password: '123456')

puts 'creating services..'
Service.create!(user: brownie, offered_title: "Digital illustration work", needed_title: 'Design a comprehensive brand style guide', description_offered: 'I offer digital illustration work for businesses, magazines, packaging use, and social media. My illustrations are often colorful, fun and light-hearted, but can be adjusted to your personal needs. The files delivered are JPG and/or PNG and/or PDF, depending on the clients needs.', description_needed: 'Design studio based in Algiers, Algeria. Bringin more than 7+ years of experience to the table, weve worked with various businesses throughout our careers. Got any questions? shoot us a message.', location: 'Tel Aviv, Israel')
Service.create!(user: rabea, offered_title: 'Quality 3d models for printing', needed_title: 'electrition', description_offered: 'I have worked with various clients such as game developers like Pyxton Studios, kickstarters developers, designers, 3D print enthusiasts and more. I am very passionate of what I do, I love making characters, game assets and sculptures.', description_needed: 'Fitness trainers and instructors lead, instruct, and motivate individuals or groups in exercise activities, including cardiovascular exercises ', location: 'Haifa, Israel')
Service.create!(user: angel, offered_title: 'Design album or single cover', needed_title: 'Gym Trainer', description_offered: 'Offering fully professional and eye candy album covers for your music', description_needed: 'bbbbbbbbb', location: 'Tel Aviv,Israel')
Service.create!(user: eyal, offered_title: 'Chef', needed_title: 'Book Design', description_offered: 'Cooking meals up to 5 people over dinner for celebration/ holidays etc.', description_needed: 'Professional graphic designer plus a very good marketeer', location: 'Nazareth, Israel')
Service.create!(user: brownie, offered_title: "Digital illustration work", needed_title: 'Design a comprehensive brand style guide', description_offered: 'I offer digital illustration work for businesses, magazines, packaging use, and social media. My illustrations are often colorful, fun and light-hearted, but can be adjusted to your personal needs. The files delivered are JPG and/or PNG and/or PDF, depending on the clients needs.', description_needed: 'Design studio based in Algiers, Algeria. Bringin more than 7+ years of experience to the table, weve worked with various businesses throughout our careers. Got any questions? shoot us a message.', location: 'Tel Aviv, Israel')
Service.create!(user: rabea, offered_title: 'Quality 3d models for printing', needed_title: 'electrition', description_offered: 'I have worked with various clients such as game developers like Pyxton Studios, kickstarters developers, designers, 3D print enthusiasts and more. I am very passionate of what I do, I love making characters, game assets and sculptures.', description_needed: 'Fitness trainers and instructors lead, instruct, and motivate individuals or groups in exercise activities, including cardiovascular exercises ', location: 'Haifa, Israel')
Service.create!(user: angel, offered_title: 'Design album or single cover', needed_title: 'Gym Trainer', description_offered: 'Offering fully professional and eye candy album covers for your music', description_needed: 'bbbbbbbbb', location: 'Tel Aviv,Israel')
Service.create!(user: eyal, offered_title: 'Chef', needed_title: 'Book Design', description_offered: 'Cooking meals up to 5 people over dinner for celebration/ holidays etc.', description_needed: 'Professional graphic designer plus a very good marketeer', location: 'Nazareth, Israel')


