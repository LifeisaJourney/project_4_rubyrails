# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create!({username:"heinekenhamilton", email: "heineken@gmail.com", password_digest:"$2a$10$Wf3CxWf4vqwcasjGKn37hORLM3oLvkn3lVK1B92NUnrQ2TknRRP0e" })
user2 = User.create!({username:"tamlikescats", email: "tam@gmail.com", password_digest:"$2a$10$JPtiQhGjIjO/EhCp6/cxPO2N7Zy0cGa1u0GRKA1fqA5pVEclEVxOe"})
user3 = User.create!({username:"bobthecarnivore", email:"bobthemeateater@gmail.com", password_digest:"$2a$10$q5E3Vf/T91fjIj/OBKq4yeGfM9Pmt8uUjrvFicVKX10ATauDplriO"})
user4 = User.create!({username:"alpacalover", email: "alpacas@gmail.com", password_digest:"$2a$10$FmVb7pvtejWe.VbbH.KdcuVXhuzfnm7Z.nI.vLUq4gDq05svjUJ0a"})
user5 = User.create!({username:"biggeorge", email: "monkeygeorge@gmail.com", password_digest: "$2a$10$Qs2h8H/YGVO9.o1jUbRjPeXfT/Apx6qIjsiVbLv.k/de7NhMe.1v6"})
user6 = User.create!({username:"smollanimol", email: "smoll@gmail.com", password_digest: "$2a$10$GBU2/nCq74qhXnBkXETWeeZWtcuCrl5my5s7DcCuZAS1CLUJ1X/1W"})
user7 = User.create!({username:"adorablejoseph", email: "saintjoseph@gmail.com", password_digest: "$2a$10$lWdtiEF3hkv8f/bFP.kVo.ITsw5CzGyJmljcHYTRGZLp5WKdtmI02"})


post1 = Post.create!({title: "Alpacas", post: "Alpaca Petting Zoo this weekend in NYC!", :user_id => user1.id})
post2 = Post.create!({title: "Shiba Inu", post: "Import Shiba Inu for $3000!?", :user_id => user3.id})


comment1 = Comment.create!({comment_text:"I highly recommend this petting zoo to fellow tourists! Enjoy it while it's still here!", :user_id => user1.id, :post_id => post1.id})
comment2 = Comment.create!({comment_text:"You can buy the alpaca fleece in the nearby store! It's so fluffy!", :user_id => user2.id, :post_id => post1.id})
comment3 = Comment.create!({comment_text:"I wonder if the meat is as tender as it is soft for the fleece...", :user_id => user3.id, :post_id => post1.id })
comment4 = Comment.create!({comment_text:"DON'T EAT THE INNOCENT ALPACAS", :user_id => user4.id, :post_id => post1.id})
comment5 = Comment.create!({comment_text:"I bet it tastes like wagyu beef or it could go the other way and tastes like game meat.", :user_id => user5.id, :post_id => post1.id})
comment6 = Comment.create!({comment_text:"I've purchased the alpaca woven wool hat after trying it on! It was a snug fit!", :user_id => user6.id, :post_id => post1.id})
comment7 = Comment.create!({comment_text:"I wanted to purchase an alpaca for myself, until I saw the price tag of $750,000...", :user_id => user7.id, :post_id => post1.id})
comment8 = Comment.create!({comment_text:"That's way too expensive!", :user_id => user4.id, :post_id => post2.id})
