# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user1 = User.create!(name: "Jonathan", phone: "7861234567", email: "jonathan@gmail.com", encrypted_password: "password")
user2 = User.create!(name: "Gabriel", phone: "3054567890", email:  "gab@gmail.com", encrypted_password: "password")
user3 = User.create!(name: "Nick", phone: "9547654456", email: "nick@gmail.com", encrypted_password: "password")

apple = Product.create!(title: "Apple Tree", description: "Can grow from 10 to 30 feet tall and nearly as wide. Apples are moderately fast growing, but growth slows with age. Apple trees can live for 100 years or more. Apple trees bloom in the spring, set fruit, and take from 100 to 200 days to reach harvest depending upon the variety.", image: "http://efdreams.com/data_images/dreams/apple-tree/apple-tree-02.jpg", price: 450)
mango = Product.create!(title: "Mango Tree", description: "The mango is a very attractive, evergreen tree with glossy, dense foliage. The new shoots are reddish, the mature leaves a dark green. Depending on the variety mango trees can grow huge (to 35 m and 15 m across for seedling trees of older varieties). But you can keep a mango tree small by pruning it regularly.", image: "http://www.abc.net.au/news/image/6366758-3x2-940x627.jpg", price: 500)
pine = Product.create!(title: "Pine Tree", description: "Pine trees are evergreen, coniferous resinous trees (or, rarely, shrubs) growing 3–80 m (10–260 ft) tall, with the majority of species reaching 15–45 m (50–150 ft) tall. The bark of most pines is thick and scaly, but some species have thin, flaky bark.", image: "https://s-media-cache-ak0.pinimg.com/originals/e7/e5/44/e7e544e9206ea216eca416cb9269b144.jpg", price: 450)
roses = Product.create!(title: "Garden of Roses", description: "Plant roses where they will receive a minimum of 5 to 6 hours of full sun per day. Roses grown in weak sun may not die at once, but they weaken gradually. Give them plenty of organic matter when planting and don’t crowd them.", image: "http://www.coolgarden.me/wp-content/uploads/2014/03/roses1.jpg", price: 500)
dogwood = Product.create!(title: "Red Dogwood Tree", description: "Red Dogwood proudly displays pink or red spring flowers that last deep into the blooming season giving you exceptional performance when other trees quit. This tree offers color all year, making it one of our most popular specimen trees. Matures to a height of 20-25ft you can even plant it in small lawns or other tight areas.", image: "http://images.fast-growing-trees.com/images/P/Red_Dogwood.jpg", price: 500)
oak = Product.create!(title: "Northern Red Oak Tree", description: "This tree grows at a fast rate, with height increases of more than 24inches per year. Full sun is the ideal condition for this tree, meaning it should get at least six hours of direct, unfiltered sunlight each day. Acorns from this tree are at the top of the food preference list for blue jays, wild turkeys, squirrels, small rodents, whitetail deer, raccoons and black bears.", image: "http://www.kdwoodscompany.com/assets/images/red-oak-tree.jpg", price: 500)

