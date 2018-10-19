# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1= User.create!({ username:"lama", email:"lama@gmail.com", password_digest:"abc"})


post1 = Post.create!({title: "Alpacas", post: "Alpaca Petting Zoo this weekend in NYC!", :user_id => 1})
post2 = Post.create!({title: "Shiba Inu", post: "Import Shiba Inu for $3000!?", :user_id => 1})


comment1 = Comment.create!({comment_text:"I highly recommend this petting zoo to fellow tourists! Enjoy it while it's still here!", :user_id => 1, :post_id => post1.id})
comment2 = Comment.create!({comment_text:"You can buy the alpaca fleece in the nearby store! It's so fluffy!", :user_id => 1, :post_id => post1.id})
comment3 = Comment.create!({comment_text:"I wonder if the meat is as tender as it is soft for the fleece...", :user_id => 1, :post_id => post1.id })
comment4 = Comment.create!({comment_text:"DON'T EAT THE INNOCENT ALPACAS", :user_id => 1, :post_id => post1.id})
comment5 = Comment.create!({comment_text:"I bet it tastes like wagyu beef or it could go the other way and tastes like game meat.", :user_id => 1, :post_id => post1.id})
comment6 = Comment.create!({comment_text:"I've purchased the alpaca woven wool hat after trying it on! It was a snug fit!", :user_id => 1, :post_id => post1.id})
comment7 = Comment.create!({comment_text:"I wanted to purchase an alpaca for myself, until I saw the price tag of $750,000...", :user_id => 1, :post_id => post1.id})
comment8 = Comment.create!({comment_text:"That's way too expensive!", :user_id => 1, :post_id => post2.id})
