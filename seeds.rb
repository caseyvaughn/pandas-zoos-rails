# creating the data

Zoo.create!([
  {name: "San Diego Zoo", city: "San Diego"},
  {name: "Bifengxia Panda Center", city: "Ya’an"},
  {name: "Gonggashan", city: "Kangding"},
  {name: "Edinburgh Zoo", city: "Edinburgh"}
  {name: "General Assembly", city: "New York"}
])
Panda.create!([
  {name: "Bai Yun", age: 28},
  {name: "Gao Gao", age: 27},
  {name: "Tian Tian", age: 21},
  {name: "Basi", age: 37},
  {name: "Drake Talley", age: 102}
])

# associating the tables

zoos = Zoo.all
pandas = Panda.all

pandas.each do |panda|
  zoos[rand(0..zoos.length)].pandas << panda
end