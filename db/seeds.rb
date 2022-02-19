# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Zoo.destroy_all
Panda.destroy_all

zoo1 = Zoo.create! name: "San Diego Zoo", city: "San Diego"
zoo2 = Zoo.create! name: "Bifengxia Panda Center", city: "Ya’an"
zoo3 = Zoo.create! name: "Gonggashan", city: "Kangding"
zoo4 = Zoo.create! name: "Edinburgh Zoo", city: "Edinburgh"
zoo5 = Zoo.create! name: "General Assembly", city: "New York"

panda1 = Panda.new name: "Bai Yun", age: 28
panda2 = Panda.new name: "Gao Gao", age: 27
panda3 = Panda.new name: "Tian Tian", age: 21
panda4 = Panda.new name: "Basi", age: 37
panda5 = Panda.new name: "Drake Talley", age: 102

# associating the tables

zoo1.panda << panda1
zoo2.panda << panda2
zoo3.panda << panda3
zoo4.panda << panda4
zoo5.panda << panda5

puts "#{Zoo.all.size} zoo(s) were created!"
puts "#{Panda.all.size} panda(s) were created!"