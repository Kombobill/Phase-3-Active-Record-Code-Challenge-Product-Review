class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews
    
    
    
    def favorite_product
      products.order("reviews.star_rating DESC").first
      # code for returning the product instance that has the highest rating from this user
    end
    
    def remove_reviews(product)
      reviews.where(product_id: product.id).destroy_all
      # code for removing all reviews for a specific product by this user
    end
end
  