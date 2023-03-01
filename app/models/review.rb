class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product
    
    def print_review
      puts "Review for #{self.product.name} by #{self.user.name}: star_rating: #{self.star_rating}. comment: #{self.comment}"
      # code for printing this review in a specific format
    end
end
  