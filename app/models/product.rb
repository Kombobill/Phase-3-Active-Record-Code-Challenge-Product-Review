class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    
    def reviews
      # code for returning all reviews for this product
    end
    
    def users
      # code for returning all users who reviewed this product
    end
    
    def leave_review(user, star_rating, comment)
      # code for creating a new review associated with this product and the user
    end
    
    def print_all_reviews
      # code for printing all reviews for this product
    end
    
    def average_rating
      # code for returning the average rating of all reviews for this product
    end
end
  