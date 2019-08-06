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

zoo1.pandas << panda1
zoo2.pandas << panda2
zoo3.pandas << panda3
zoo4.pandas << panda4
zoo5.pandas << panda5
