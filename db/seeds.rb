# seeds.rb

# Create some products
Product.create(name: "Widget A")
Product.create(name: "Widget B")
Product.create(name: "Widget C")

# Create some users
User.create(name: "Alice")
User.create(name: "Bob")
User.create(name: "Charlie")

# Create some reviews
Review.create(product_id: 1, user_id: 1, star_rating: 4, comment: "Great product!")
Review.create(product_id: 1, user_id: 2, star_rating: 3, comment: "Average product.")
Review.create(product_id: 2, user_id: 1, star_rating: 5, comment: "Amazing product!!!")
Review.create(product_id: 2, user_id: 2, star_rating: 4, comment: "Really good product.")
