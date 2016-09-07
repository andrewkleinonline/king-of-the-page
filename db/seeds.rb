# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

khaleda = User.create(username: "KingKhan", password: "hello")
kprompt = Prompt.create(content:"Fav color?", current: true)

ece = User.create(username: "Aye Jay", password: "123")
andrew = User.create(username: "Androus", password: "123")
logan = User.create(username: "Log", password: "an")

kprompt.king = khaleda
kprompt.save

e_response = ece.responses.create(content:"blue")
l_response = logan.responses.create(content:"green")
a_response = andrew.responses.create(content:"orange")

kprompt.responses << e_response
kprompt.responses << l_response
kprompt.responses << a_response
