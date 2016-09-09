# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create users
khaleda = User.create(admin: true, king: true, first_name: "Khaleda", last_name: "Khan", email: "khaleda.khan87@gmail.com", profile_picture_url: "https://pbs.twimg.com/profile_images/447374371917922304/P4BzupWu.jpeg")
ece = User.create(admin: true, first_name: "Ece", last_name: "Ozalp", email:"ecezalp@gmail.com", profile_picture_url: "http://blog.dictionary.com/wp-content/uploads/2010/11/turkey_big.jpg")
andrew = User.create(admin: true, first_name: "Andy", last_name: "Cline", email: "andrew.klein.j@gmail.com", profile_picture_url: "https://thumbs.dreamstime.com/x/silly-man-5895642.jpg")
logan = User.create(admin: true, first_name: "Logan", last_name: "Gants", email: "lgants@gmail.com", profile_picture_url: "http://static.tumblr.com/37f6d18f902311cb5bdfae74cf6d95a8/f7hat5d/Wz9mmjtgq/tumblr_static_log")

#create prompts
khaleda.decrees.create(content: "What is your favorite color?", current: true, pending: false)
Prompt.create(content: "If you could have any superpower, what would it be?", pending: false)
Prompt.create(content: "What's your best pickup line?", pending: false)
Prompt.create(content: "What would you do if you knew you couldn't fail?", pending: false)



e_response = ece.responses.create(content:"Blue")
l_response = logan.responses.create(content:"Green")
a_response = andrew.responses.create(content:"Orange")

current_prompt = Prompt.current
current_prompt.responses << [e_response, l_response, a_response]

# kprompt.responses << l_response
# kprompt.responses << a_response
