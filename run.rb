require_relative 'config/environment'

# create instances of classes and try out the methods
user1 = User.first
user2 = User.last
product1 = Product.first
product2 = Product.last

# leave reviews for products
product1.leave_review(user1, 4, "Great product!")
product1.leave_review(user2, 3, "Average product.")
product2.leave_review(user1, 5, "Amazing product!!!")
product2.leave_review(user2, 4, "Really good product.")

# print reviews for a product
product2.print_all_reviews

# get the average rating for a product
puts "Average rating for #{product2.name}: #{product2.average_rating}"

# get the favorite product for a user
puts "#{user1.name}'s favorite product is #{user1.favorite_product.name}"

# remove reviews for a product
user1.remove_reviews(product2)
