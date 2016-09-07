# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create users
khaleda = User.create(first_name: "Khaleda", last_name: "Khan", username: "KingKhan", email: "khaleda.khan87@gmail.com", password: "hello")
ece = User.create(first_name: "Ece", last_name: "Ozalp", username: "A3", password: "123")
andrew = User.create(first_name: "Andrew", last_name: "Klein", username: "quarthex", email: "andrew.klein.j@gmail.com", password: "123")
logan = User.create(first_name: "Logan", last_name: "Gants", username: "logants", password: "123")

#create prompts
khaleda.decrees.create(content: "What is your favorite color?", current: true)
Prompt.create(content: "If you could have any superpower, what would it be?")
Prompt.create(content: "What's your best pickup line?")
Prompt.create(content: "What would you do if you knew you couldn't fail?")

#prompt.king = khaleda
#kprompt.save

e_response = ece.responses.create(content:"Blue")
l_response = logan.responses.create(content:"Green")
a_response = andrew.responses.create(content:"Orange")

current_prompt = Prompt.current
current_prompt.responses << [e_response, l_response, a_response]
# kprompt.responses << l_response
# kprompt.responses << a_response
