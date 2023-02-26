class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews
    
    def reviews
      # code for returning all reviews given by this user
    end
    
    def products
      # code for returning all products reviewed by this user
    end
    
    def favorite_product
      # code for returning the product instance that has the highest rating from this user
    end
    
    def remove_reviews(product)
      # code for removing all reviews for a specific product by this user
    end
end
  