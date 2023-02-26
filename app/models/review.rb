class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product
    
    def user
      # code for returning the user instance for this review
    end
    
    def product
      # code for returning the product instance for this review
    end
    
    def print_review
      # code for printing this review in a specific format
    end
end
  