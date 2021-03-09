# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

OrderImage.destroy_all
ImageTag.destroy_all
Order.destroy_all
Image.destroy_all
User.destroy_all
Tag.destroy_all
OrderImage.reset_pk_sequence
ImageTag.reset_pk_sequence
Order.reset_pk_sequence
Image.reset_pk_sequence
User.reset_pk_sequence
Tag.reset_pk_sequence

#####USER#####

yu = User.create(name: "Yu Shi", username: "yushiys95@gmail.com", password: "Abc123")
doug = User.create(name: "Doug Kerzner", username: "doug@gmail.com", password: "Abc321")
jason = User.create(name: "Jason Doe", username: "jason@gmail.com", password: "Cba123")
tony = User.create(name: "Tony Me", username: "tony@gmail.com", password: "123456")
jeff = User.create(name: "Jeff Ben", username: "jeff@gmail.com", password: "654321")

#####IMAGE#####

giraffe = Image.create(name: "Giraffe", description: "Animal", price: 50 , url: "https://images.unsplash.com/photo-1614075373917-05d44ee2722e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2734&q=80", user_id: 1)
palmtree = Image.create(name: "Palmtree", description: "Tree", price: 100, url: "https://images.unsplash.com/photo-1612841857676-2d3320630167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2734&q=80", user_id: 2)
frog = Image.create(name: "Frog", description: "Green frog", price: 80, url: "https://images.unsplash.com/photo-1545006398-2cf47cd87b90?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=915&q=80", user_id: 4)
cheery_blossom = Image.create(name: "Cheery Blossom", description: "Flower", price: 60, url: "https://images.unsplash.com/photo-1614535675189-6649712cec83?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=962&q=80", user_id: 5)
beach = Image.create(name: "Beach", description: "Aerial beach photo", price: 40, url: "https://images.unsplash.com/photo-1613307378200-0b366638a906?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80", user_id: 2)
#rush_hour = Image.create(name: "Rush Hour", description: "Times Square Rush Hour", price: 100, url: "/app/assets/images/rush-hour.JPG", user_id: 1)
#rush_hour = Image.create(name: "Rush Hour", description: "Times Square Rush Hour", price: 100, url: "https://imgur.com/a/60Qe82h", user_id: 1)
#rush_hour = Image.create(name: "Rush Hour", description: "Times Square Rush Hour", price: 100, url: "https://imgur.com/a/60Qe82h", user_id: 1)


#####TAG#####

landscape = Tag.create(tag: "Landscape")
flower = Tag.create(tag: "Flower")
frog = Tag.create(tag: "Frog")
tree = Tag.create(tag: "Tree")
animal = Tag.create(tag: "Animal")

#####IMAGE TAG#####

landscape_tag = ImageTag.create(tag_id: 1, image_id: 5)
frog_tag = ImageTag.create(tag_id: 3, image_id: 3)
animal_tag = ImageTag.create(tag_id: 5, image_id: 1)
tree_tag = ImageTag.create(tag_id: 4, image_id: 2)
flower_tag = ImageTag.create(tag_id: 2, image_id: 4)

#####ORDER#####

Order.create(ordered: false, payment_method: "Paypal", user_id: 1)
Order.create(ordered: false, payment_method: "VISA", user_id: 2)
Order.create(ordered: false, payment_method: "Mastercard", user_id: 3)
Order.create(ordered: false, payment_method: "Paypal", user_id: 4)
Order.create(ordered: false, payment_method: "Apple Pay", user_id: 5)

#####ORDERIMAGE#####

OrderImage.create(quantity: 1, image_id: 1, order_id: 1)
OrderImage.create(quantity: 1, image_id: 2, order_id: 2)
OrderImage.create(quantity: 1, image_id: 3, order_id: 3)
OrderImage.create(quantity: 1, image_id: 4, order_id: 4)
OrderImage.create(quantity: 1, image_id: 5, order_id: 5)

puts "📸📸📸📸📸SEEDED📸📸📸📸📸"