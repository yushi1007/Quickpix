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

yu = User.create(name: "Yu", username: "yushiys95@gmail.com", password: "Abc123")
doug = User.create(name: "Doug", username: "doug@gmail.com", password: "Abc321")

#####IMAGE#####

giraffe = Image.create(name: "Giraffe", description: "Animal", price: 50 , url: "https://images.unsplash.com/photo-1614075373917-05d44ee2722e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2734&q=80", user_id: 1)
palmtree = Image.create(name: "Palmtree", description: "Tree", price: 100, url: "https://images.unsplash.com/photo-1612841857676-2d3320630167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2734&q=80", user_id: 1)
frog = Image.create(name: "Frog", description: "Green frog", price: 80, url: "https://images.unsplash.com/photo-1545006398-2cf47cd87b90?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=915&q=80", user_id: 2)
cheery_blossom = Image.create(name: "Cheery Blossom", description: "Flower", price: 60, url: "https://images.unsplash.com/photo-1614535675189-6649712cec83?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=962&q=80", user_id: 1)
beach = Image.create(name: "Beach", description: "Aerial beach photo", price: 40, url: "https://images.unsplash.com/photo-1613307378200-0b366638a906?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80", user_id: 2)
mountain = Image.create(name: "Mountain", description: "Reflection photo", price: 70, url: "https://images.unsplash.com/photo-1508923567004-3a6b8004f3d7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80", user_id: 2)
street = Image.create(name: "Street", description: "Rainning day", price: 100, url: "https://images.unsplash.com/photo-1531168795991-f0b78ed6796d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80", user_id: 1)
bridge = Image.create(name: "Lower Manhattan", description: "On the Manhattan Bridge", price: 40, url: "https://images.unsplash.com/photo-1486671736870-2f695ecdf813?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80", user_id: 1)
beach2 = Image.create(name: "Beach", description: "Aerial beach photo", price: 40, url: "https://images.unsplash.com/photo-1505142468610-359e7d316be0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=581&q=80", user_id: 2)
tokyo = Image.create(name: "Tokyo Tower", description: "Nice view", price: 40, url: "https://images.unsplash.com/photo-1516292698305-5cba99c9f9c5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80", user_id: 1)
apple = Image.create(name: "Apple", description: "Still life", price: 50, url: "https://images.unsplash.com/photo-1588415986895-48daf87df9b7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80", user_id: 1)
leafs = Image.create(name: "Leafs", description: "Leafs", price: 60, url: "https://images.unsplash.com/photo-1600784499578-c62b50eded3f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=582&q=80", user_id: 2)


#####TAG#####

landscape = Tag.create(tag: "Landscape")
flower = Tag.create(tag: "Flower")
frog = Tag.create(tag: "Frog")
tree = Tag.create(tag: "Tree")
animal = Tag.create(tag: "Animal")

#####IMAGE TAG#####

# landscape_tag = ImageTag.create(tag_id: 1, image_id: 5)
# frog_tag = ImageTag.create(tag_id: 3, image_id: 3)
# animal_tag = ImageTag.create(tag_id: 5, image_id: 1)
# tree_tag = ImageTag.create(tag_id: 4, image_id: 2)
# flower_tag = ImageTag.create(tag_id: 2, image_id: 4)

#####ORDER#####

# Order.create(ordered: false, payment_method: "Paypal", user_id: 1)
# Order.create(ordered: false, payment_method: "VISA", user_id: 2)
# Order.create(ordered: false, payment_method: "Mastercard", user_id: 3)
# Order.create(ordered: false, payment_method: "Paypal", user_id: 4)
# Order.create(ordered: false, payment_method: "Apple Pay", user_id: 5)

#####ORDERIMAGE#####

# OrderImage.create(image_id: 1, order_id: 1)
# OrderImage.create(image_id: 2, order_id: 2)
# OrderImage.create(image_id: 3, order_id: 3)
# OrderImage.create(image_id: 4, order_id: 4)
# OrderImage.create(image_id: 5, order_id: 5)

puts "📸📸📸📸📸SEEDED📸📸📸📸📸"
