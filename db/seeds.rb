require_relative '../config/environment'
puts "🌱 Seeding data..."

# Create some products
product1= Product.create(name: "Widget A")
product2= Product.create(name: "Widget B")
product3= Product.create(name: "Widget C")

# Create some users
user1= User.create(name: "Alice")
user2= User.create(name: "Bob")
user3= User.create(name: "Charlie")

# Create some reviews
review1= Review.create(product_id: 1, user_id: 1, star_rating: 4, comment: "Great product!")
review2= Review.create(product_id: 1, user_id: 2, star_rating: 3, comment: "Average product.")
review3= Review.create(product_id: 2, user_id: 1, star_rating: 5, comment: "Amazing product!!!")
review4= Review.create(product_id: 2, user_id: 2, star_rating: 4, comment: "Really good product.")
