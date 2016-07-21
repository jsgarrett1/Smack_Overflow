User.delete_all
Smack.delete_all
Category.delete_all
Comment.delete_all
Comeback.delete_all
Vote.delete_all

kim_k = Category.create(topic: "Kim K")
social = Category.create(topic: "Social Media")

# Video Games Smack
vg_category = Category.create(topic: "Video Games")

# Create Users
vg_user1 = User.new(email: "word@email.com", username: "1337 crew")
vg_user2 = User.new(email: "word1@email.com", username: "Murloc Lover")
vg_user3 = User.new(email: "word2@email.com", username: "Cpt. Underpants")
vg_user4 = User.new(email: "word3@email.com", username: "basementdwell0r")

vg_user1.password = 'password'
vg_user2.password = 'password'
vg_user3.password = 'password'
vg_user4.password = 'password'

vg_user1.save!
vg_user2.save!
vg_user3.save!
vg_user4.save!

# Create Smack and Assign Users
vg_smack1 = Smack.create(title: "I heard your baby crying in the background over voice-comm", description: "You should grow up and get a life by this point... Don't you have to go to work in the morning?")
vg_comment1 = Comment.create(description: "why does it say paper jam when there is no paper jam?")
vg_comeback1 = Comeback.create(description: "Good one. I hate when we are downing bosses and someone has to go change a diaper.")
vg_comeback2 = Comeback.create(description: "Hey, some people have kids and play games, lighten up... ")
vg_comment2  = Comment.create(description: "noob")

vg_smack1.user = vg_user1
vg_comment1.user = vg_user2
vg_comeback1.user = vg_user3
vg_comeback2.user = vg_user4
vg_comment2.user = vg_user2

vg_smack1.comments << vg_comment1
vg_smack1.comebacks << vg_comeback1
vg_smack1.comebacks << vg_comeback2
vg_comeback2.comments << vg_comment2

# Create Smack and Assign Users
vg_smack2 = Smack.create(title: "ಠ_ಠ Hey noob ಠ_ಠ", description: "Your game ID is in the millions, why don't you go to the kiddie server. Quit life while you're at it")
vg_comment3 = Comment.create(description: "how do you know their game id?")
vg_comeback3 = Comeback.create(description: "Hey, some people have kids and play games, lighten up... ")
vg_comment4 = Comment.create(description: "(>'.')>  a lep is a ball  <('.'<)")
vg_comeback4 = Comeback.create(description: "$$$ I have a 5 digit Steam ID for sale.")
vg_comeback5 = Comeback.create(description: "The developers have been catering to casuals with each patch. This game takes no skill now anyway. Now I'm waiting for Pokemon Go Pro")
vg_comment5 = Comment.create(description: "Go Pro lol")

vg_smack2.user = vg_user1
vg_comment3.user = vg_user2
vg_comeback3.user = vg_user3
vg_comment4.user = vg_user1
vg_comeback4.user = vg_user4
vg_comeback5.user = vg_user2
vg_comment5.user = vg_user1

vg_smack2.comments << vg_comment3
vg_smack2.comebacks << vg_comeback3
vg_comeback3.comments << vg_comment4
vg_smack2.comebacks << vg_comeback4
vg_smack2.comebacks << vg_comeback5
vg_comeback5.comments << vg_comment5

vg_category.smacks << vg_smack1
vg_category.smacks << vg_smack2

# vg_smack1
# vg_comment1
# vg_comeback1
# vg_comment2
# vg_comeback2
# vg_comment3
# vg_comment4

# User.create [{email: "word@email.com", username: "1337 crew"}, {email: "word1@email.com", username: "Murloc Lover"}, {email: "word2@email.com", username: "Cpt. Underpants"}, {email: "word3@email.com", username: "basementdwell0r"}]

# Smack.create [{title: "I heard your baby crying in the background over voice-comm", description: "You should grow up and get a life by this point... Don't you have to go to work in the morning?"}, {title: "ಠ_ಠ Hey noob ಠ_ಠ", description: "Your game ID is in the millions, why don't you go to the kiddie server. Quit life while you're at it"}]

# Comeback.create [{description: "Good one. I hate when we are downing bosses and someone has to go change a diaper."}, {description: "Hey, some people have kids and play games, lighten up... "}, {description: "$$$ I have a 5 digit Steam ID for sale."}, {description: "The developers have been catering to casuals with each patch. This game takes no skill now anyway. Now I'm waiting for Pokemon Go Pro"}]

# Comment.create [{description: "noob"}, {description: "how do you know their game id?"}, {description: "why does it say paper jam when there is no paper jam?"}, {description: "Go Pro lol"}, {description: "(>'.')>  a lep is a ball  <('.'<)"}]

# Politics Smack
politics_category = Category.create(topic: "Politics")

politics_user1 = User.new(email: "neverTrump@futrump.com", username: "JoelGarrett")
politics_user2 = User.new(email: "sassycat@gmail.com", username: "meow1234")
politics_user3 = User.new(email: "wtf@gmail.com", username: "masterpusher1234")
politics_user4 = User.new(email: "Matt@gmail.com", username: "mattbaker")

politics_user1.password = 'password'
politics_user2.password = 'password'
politics_user3.password = 'password'
politics_user4.password = 'password'

politics_user1.save!
politics_user2.save!
politics_user3.save!
politics_user4.save!

# Create Smack and Assign Users
politics_smack1 = Smack.create(title: "Why can’t Donald Trump be a Lannister?", description: "Because he never pays his debts.")
politics_comment1 = Comment.create(description: "Dammmmnnn!!!")
politics_comeback1 = Comeback.create(description: "And now the rains weep o’er his hall and not a soul to hear…… Donald Trump cry about his little hands.")

politics_smack1.comments << politics_comment1
politics_smack1.comebacks << politics_comeback1

politics_smack1.user = politics_user1
politics_comment1.user = politics_user2
politics_comeback1.user = politics_user3

# Create Smack and Assign Users
politics_smack2 = Smack.create(title: "How is Donald Trump going to shut down the Department of Education?")
politics_comment2 = Comment.create(description: "Oh snap")
politics_comeback2 = Comeback.create(description: "I heard he hasn’t read a book in 20 years")

politics_smack2.comments << politics_comment2
politics_smack2.comebacks << politics_comeback2

politics_smack2.user = politics_user3
politics_comment2.user = politics_user2
politics_comeback2.user = politics_user1

# Create Smack and Assign Users
politics_smack3 = Smack.create(title: "Have you seen the Clint Eastwood movie about Donald Trump?", description: "Its called ‘Billion Dollar Cry Baby.’")
politics_comment3 = Comment.create(description: "Zing!")
politics_comeback3 = Comeback.create(description: "Cic Maith Sa Toin Ata De Dlith Air, -translation ‘He needs a good kick in the arse")

politics_smack3.comments << politics_comment3
politics_smack3.comebacks << politics_comeback3

politics_smack3.user = politics_user2
politics_comment3.user = politics_user3
politics_comeback3.user = politics_user1

# Create Smack and Assign Users
politics_smack4 = Smack.create(title: "If Donald Trump is elected for president", description: "There will be hell tupee")
politics_comment4 = Comment.create(description: "HAHAHAH!!")
politics_comeback4 = Comeback.create(description: "The hardest part about Donald Trumps presidency will be to find a cabinet for that thing on his head.")

politics_smack4.comments << politics_comment4
politics_smack4.comebacks << politics_comeback4

politics_smack4.user = politics_user3
politics_comment4.user = politics_user1
politics_comeback4.user = politics_user2

politics_category.smacks << politics_smack1
politics_category.smacks << politics_smack2
politics_category.smacks << politics_smack3
politics_category.smacks << politics_smack4

# Smack.create [{title: "Why can’t Donald Trump be a Lannister?", description: "Because he never pays his debts."}, {title: "How is Donald Trump going to shut down the Department of Education?", description: "By renaming it Trump University"}, {title: "Have you seen the Clint Eastwood movie about Donald Trump?", description: "Its called ‘Billion Dollar Cry Baby.’"}, {title: "If Donald Trump is elected for president", description: "There will be hell tupee"}]

# Comeback.create [{description: "And now the rains weep o’er his hall and not a soul to hear…… Donald Trump cry about his little hands."},{description: "I heard he hasn’t read a book in 20 years"},{description: "Cic Maith Sa Toin Ata De Dlith Air, -translation ‘He needs a good kick in the arse"},{description: "The hardest part about Donald Trumps presidency will be to find a cabinet for that thing on his head."}]

# Comment.create [{description: "Dammmmnnn!!!"}, {description: "Oh snap"}, {description: "Zing!"}, {description: "HAHAHAH!!"}]

# Coding Smack
coding_category = Category.create(topic: "Coding")

coding_smack1 = Smack.create(title: "A coworker just said I’m so bad at programming I should have never been born.", description: "My co-worker said I’m so awful at programming that I should have never been born and my mother must have passed on her ‘idiot’ genes to me. What can I say back?")
coding_comment1 = Comment.create(description: "Leave the mothers out of this")
coding_comeback1 = Comeback.create(description: "Yo momma so poor her bank balance says nil.")
coding_comment2 = Comment.create(description: "Dayuummmmnnnnnn")
coding_comeback2 = Comeback.create(description: "Yo momma services more requests than http.")
coding_comment3 = Comment.create(description: "LOLZ")
coding_comment4 = Comment.create(description: "Ohhh shitt")

coding_smack1.comments << coding_comment1
coding_smack1.comebacks << coding_comeback1
coding_comeback1.comments << coding_comment2
coding_smack1.comebacks << coding_comeback2
coding_comeback2.comments << coding_comment3
coding_comeback2.comments << coding_comment4

coding_user1 = User.new(username: "helom", email: "helomberhane@gmail.com")
coding_user2 = User.new(username: "nothelom", email: "hb@123.com")
coding_user3 = User.new(username: "definitelynothelom", email: "h@yahoo.com")
coding_user4 = User.new(username: "n00bXXX", email: "n00b@gmail.com")

coding_user1.password = 'password'
coding_user2.password = 'password'
coding_user3.password = 'password'
coding_user4.password = 'password'

coding_user1.save!
coding_user2.save!
coding_user3.save!
coding_user4.save!

coding_smack1.user = coding_user4
coding_comment1.user = coding_user2
coding_comeback1.user = coding_user1
coding_comment2.user = coding_user3
coding_comeback2.user = coding_user3
coding_comment3.user = coding_user3
coding_comment4.user = coding_user2

coding_smack2 = Smack.create(title: "PC users are mentally incapable of appreciating the finer things in life.", description: "I guess they're just used to being slow...;)")
coding_comeback3 = Comeback.create(description: "I’d tell you to go jump out of a building but Macs don’t support Windows.")
coding_comeback4 = Comeback.create(description: "Real programmers use linux. Ubuntu 4 life")
coding_comment5 = Comment.create(description: "Ubuntu is an ancient african word that means 'i cant configure debian")
coding_comment6 = Comment.create(description: "Damn son.")

coding_smack2.comebacks << coding_comeback3
coding_smack1.comebacks << coding_comeback4
coding_comeback4.comments << coding_comment5
coding_comeback4.comments << coding_comment6

coding_user5 = User.new(username: "notTimCook", email: "timcook@apple.com")
coding_user6 = User.new(username: "billyGate$$$", email: "bill@microsoft.com")
coding_user7 = User.new(username: "linus", email: "linus@gmail.com")

coding_user5.password = 'password'
coding_user6.password = 'password'
coding_user7.password = 'password'

coding_user5.save!
coding_user6.save!
coding_user7.save!

coding_smack2.user = coding_user5
coding_comeback3.user = coding_user6
coding_comeback4.user = coding_user7
coding_comment5.user = coding_user6
coding_comment6.user = coding_user5

coding_category.smacks << coding_smack1
coding_category.smacks << coding_smack2

# Smack.create [{title: "A coworker just said I’m so bad at programming I should have never been born.", description: "My co-worker said I’m so awful at programming that I should have never been born and my mother must have passed on her ‘idiot’ genes to me. What can I say back?"}, {title: "PC users are mentally incapable of appreciating the finer things in life.", description: "I guess they're just used to being slow...;)"}]

# Comeback.create [{description: "Yo momma so poor her bank balance says nil."}, {description: "Yo momma services more requests than http."}, {description: "I’d tell you to go jump out of a building but Macs don’t support Windows."}, {description: "Real programmers use linux. Ubuntu 4 life"}]

# Comment.create [{description: "Leave the mothers out of this"}, {description: "Dayuummmmnnnnnn"}, {description: "LOLZ"}, {description: "Ohhh shitt"}, {description: "Ubuntu is an ancient african word that means 'i cant configure debian"}, {description: "Damn son."}]

# Sports Smacks

sports_category = Category.create(topic: "Sports")

# SMACK TALK 1
soccer_user1 = User.new(username: "EnglandDomination", email: "Craig1980@gmail.com", password: "password")

spain_smack = Smack.create(title: "How many Spain fans does it take to change a light bulb?", description: "None they just sit around talking about how good the old one was.", user: soccer_user1)

soccer_user2 = User.new(username: "DavidVilla7", email: "SpanishMan0@gmail.com", password: "password")

spain_comeback1 = Comeback.create(description: "What's the difference between England and a Tea Bag? The tea bag stays in the cup longer.", user: soccer_user2, smack: spain_smack)

soccer_user3 = User.new(username: "Buffon1", email: "GianluigiBuffon@gmail.com", password: "password")

soccer_comment1 = Comment.create(description: "This is what I came in here looking for", user: soccer_user3)

spain_comeback1.comments << soccer_comment1

# SMACK TALK 2

ball_user = User.new(username: "KingJames", email: "MiamiHeat2010@gmail.com")
ball_user.password = 'password'
ball_user.save!

ball_smack1 = Smack.create(title: "Why was Kevin Durant so skinny?", description: "Because Westbrook didn't feed him enough.", user: ball_user)

ball_user2 = User.new(username: "WadesWorld", email: "GoBulls2016@gmail.com")
ball_user2.password = 'password'
ball_user2.save!

smack_comment1 = Comment.create(description: "Oh shit.", user: ball_user2)

ball_smack1.comments << smack_comment1

ball_user3 = User.new(username: "SergeIbaka", email: "ORLmagic@gmail.com")
ball_user3.password = 'password'
ball_user3.save!

comeback1 = Comeback.create(description: "Momma didn't make pizza rolls either.", smack: ball_smack1, user: ball_user3)

ball_user4 = User.new(username: "Draymond23", email: "Donkey@gmail.com")
ball_user4.password = 'password'
ball_user4.save!

comeback2 = Comeback.create(description: "Chef Curry probably makes better pizza rolls", smack: ball_smack1, user: ball_user4)

ball_user5 = User.new(username: "ChefCurry", email: "ChokeOften@gmail.com")
ball_user5.password = 'password'
ball_user5.save!

comeback_comment1 = Comment.create(description: "Why hasn't anyone photoshopped a gif of pizza rolls being thrown into Westbrook's mouth?", user: ball_user5)

comeback2.comments << comeback_comment1

# SMACK TALK 3
nba_user = User.new(username: "D_Fish", email: "TheNextPhilJack@gmail.com")
nba_user.password = 'password'
nba_user.save!

nba_smack = Smack.create(title: "How many Knicks does it take to change a tire?", description: "One, unless it's a blowout, then they all show up.", user: nba_user)

nba_user2 = User.new(username: "Phil Jackson", email: "ZenMaster123@gmail.com")
nba_user2.password = 'password'
nba_user2.save!

nba_comment1 = Comment.create(description: "LOL", user: nba_user2)
nba_smack.comments << nba_comment1

nba_user3 = User.new(username: "DROSE", email: "NoKnees@gmail.com")
nba_user3.password = 'password'
nba_user3.save!

nba_comeback1 = Comeback.create(description: "I could easily be wrong but I think it's saying New York players are notorious for working together at auto repair shops after tough losses as a form of team bonding.", user: nba_user3, smack: nba_smack)

nba_comment2 = Comment.create(description: "wow was I off.", user: nba_user3)
nba_comeback1.comments << nba_comment2

nba_user4 = User.new(username: "RobinLopez", email: "Knicks4Lyfe@gmail.com")
nba_user4.password = 'password'
nba_user4.save!

nba_comeback2 = Comeback.create(description: "Told my boss this smack. I got fired. :(", smack: nba_smack, user: nba_user4)

sports_category.smacks << spain_smack
sports_category.smacks << ball_smack1
sports_category.smacks << nba_smack


