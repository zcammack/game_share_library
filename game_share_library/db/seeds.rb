5.times do 
    User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "Password")
end

5.times do 
    Game.create(title: Faker::Game.title, platform: Faker::Game.platform, user_id: 1)
end

5.times do 
    Game.create(title: Faker::Game.title, platform: Faker::Game.platform, user_id: 2)
end

5.times do 
    Game.create(title: Faker::Game.title, platform: Faker::Game.platform, user_id: 3)
end

5.times do 
    Game.create(title: Faker::Game.title, platform: Faker::Game.platform, user_id: 4)
end
