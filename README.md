# Phase-3-Active-Record-Code-Challenge-Product-Review


 This is a simple Ruby application that allows users to input a name and receive a greeting in return.

## Set Up


Clone this repository to your local machine.
```
        git@github.com:Kombobill/Phase-3-Active-Record-Code-Challenge-Product-Review.git
```


To install all the necessary gems(Ruby libraries) you would run the command

```
        bundle install
```


To create the database tables. Run the command

``` 
        rake db:migrate
```


To add seed data to the database.Run
``` 
         rake db:seed
``` 


## Usage

The project contains three classes: User, Product, and Review.


## User


The User class represents a user of the application. It has a one-to-many relationship with the Review class.



### Methods


User#reviews: Returns a collection of all the Reviews that the User has given.


User#products: Returns a collection of all the Products that the User has reviewed.


User#favorite_product: Returns the product instance that has the highest star rating from this user.


User#remove_reviews(product): Takes a Product (an instance of the Product class) and removes all of this user's reviews for that product.


## Product


The Product class represents a product in the application. It has a one-to-many relationship with the Review class.



### Methods


Product#reviews: Returns a collection of all the Reviews for the Product.


Product#users: Returns a collection of all the Users who reviewed the Product.


Product#leave_review(user, star_rating, comment): Takes a User (an instance of the User class), a star_rating (integer), and a comment (string) as arguments, and creates a new Review in the database associated with this Product and the User.


Product#print_all_reviews: Puts in the terminal a string representing each review for this product. Each review should be formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}.


Product#average_rating: Returns a float representing the average star rating for all reviews for this product.


## Review
The Review class represents a review of a product by a user. It has a many-to-one relationship with both the User and Product classes.



### Methods


Review#user: Returns the User instance for this Review.


Review#product: Returns the Product instance for this Review.


Review#print_review: Puts in the terminal a string formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}.


## Contributing


Bug reports and pull requests are welcome on GitHub at link to project. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## Author


Billgates Kombo



## License


The project is available as open source under the terms of the MIT License.


