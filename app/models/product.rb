class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    
    
    def leave_review(user, star_rating, comment)Review.create(
      comment: comment,
      star_rating: star_rating,
      product_id: self.id,
      user_id: user.id
  )
      # code for creating a new review associated with this product and the user
    end
    
    def print_all_reviews
      all_reviews = self.reviews
      all_reviews.collect do |review|
          review.print_review
      end 
      # code for printing all reviews for this product
    end
    
    def average_rating
      reviews.average(:star_rating)
      # code for returning the average rating of all reviews for this product
    end
end
  