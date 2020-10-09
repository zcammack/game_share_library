5.times do 
    User.create(username: Dummy::name.name, email: Dummy::Internet.email, password: "Password")
end

5.times do 
    Game.create(title: NotARealGame::Game.title, platform: NotARealGame::Console.platform, user_id: 1)
end

5.times do 
    Game.create(title: NotARealGame::Game.title, platform: NotARealGame::Console.platform, user_id: 2)
end

5.times do 
    Game.create(title: NotARealGame::Game.title, platform: NotARealGame::Console.platform, user_id: 3)
end

5.times do 
    Game.create(title: NotARealGame::Game.title, platform: NotARealGame::Console.platform, user_id: 4)
end