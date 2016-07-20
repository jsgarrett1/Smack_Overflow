User.delete_all
Smack.delete_all
Category.delete_all
Comment.delete_all
Comeback.delete_all
Vote.delete_all


cat = Category.create(topic: "Video Games")

smack_1 = Smack.create(title: "I heard your baby crying in the background over voice-comm", description: "You should grow up and get a life by this point... Don't you have to go to work in the morning?")

smack_2 = Smack.create(title: "ಠ_ಠ Hey noob ಠ_ಠ", description: "Your game ID is in the millions, why don't you go to the kiddie server. Quit life while you're at it")

comeback_1 = Comeback.create(description: "Good one. I hate when we are downing bosses and someone has to go change a diaper.")

comeback_2 = Comeback.create(description: "Hey, some people have kids and play games, lighten up... ")

comeback_3 = Comeback.create(description: "$$$ I have a 5 digit Steam ID for sale.")

comeback_4 = Comeback.create(description: "The developers have been catering to casuals with each patch. This game takes no skill now anyway. Now I'm waiting for Pokemon Go Pro")

comm_1 = Comment.create(description: "noob")

comm_2 = Comment.create(description: "how do you know their game id?")

comm_3 = Comment.create(description: "why does it say paper jam when there is no paper jam?")

comm_4 = Comment.create(description: "Go Pro lol")

comm_5 = Comment.create(description: "(>'.')>  a lep is a ball  <('.'<)")

v1 = Vote.create(value: 1)
v2 = Vote.create(value: 1)
v3 = Vote.create(value: 1)
v4 = Vote.create(value: 1)
v5 = Vote.create(value: 1)
v6 = Vote.create(value: 1)
v7 = Vote.create(value: 1)
v8 = Vote.create(value: 1)
v9 = Vote.create(value: 1)
v10 = Vote.create(value: 1)
v11 = Vote.create(value: 1)
v12 = Vote.create(value: 1)
v13 = Vote.create(value: 1)
v14 = Vote.create(value: 1)
v15 = Vote.create(value: 1)
v16 = Vote.create(value: -1)
v17 = Vote.create(value: -1)
v18 = Vote.create(value: -1)
v19 = Vote.create(value: -1)
v20 = Vote.create(value: -1)

comeback_3.votes << v16
comeback_3.votes << v17
comeback_3.votes << v18
comeback_3.votes << v19
comeback_3.votes << v20
comeback_1.votes << v1
comeback_1.votes << v2
comeback_2.votes << v3
comeback_2.votes << v3
comeback_3.votes << v4
comeback_4.votes << v5
comeback_4.votes << v6
smack_1.votes << v7
smack_1.votes << v8
smack_1.votes << v9
smack_2.votes << v10
smack_2.votes << v11
comm_1.votes << v12
comm_1.votes << v13
comm_5.votes << v14
comm_5.votes << v15

user1 = User.create(email: "word@email.com", username: "1337 crew")
user2 = User.create(email: "word1@email.com", username: "Murloc Lover")
user3 = User.create(email: "word2@email.com", username: "Cpt. Underpants")
user4 = User.create(email: "word3@email.com", username: "basementdwell0r")

smack_1.user = user1
smack_2.user =user3
comeback_1.user =user2
comeback_2.user =user4
comeback_3.user =user1
comeback_4.user =user3
comeback_2.comments << comm_1
smack_2.comments << comm_2
comeback_4.comments << comm_4
comeback_2.comments << comm_5
smack_1.comments << comm_3


user4.comments << comm_1
user3.comments << comm_2
user1.comments << comm_3
user2.comments << comm_4
user3.comments << comm_5

cat.smacks << smack_1
cat.smacks << smack_2
