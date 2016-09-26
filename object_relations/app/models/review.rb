require 'pry'

class Review
  # a Review is not going to exist, unless created by a Customer
  # Created with a corresponding Restaurant and a blurb
  # the corresponding Restaurant has to exist proir to the creation of the Review instance

  attr_accessor :customer, :restaurant

  def initialize(restaurant, blurb)
    @customer = customer
    @restaurant = restaurant
    @blurb = blurb
  end
  
end

Pry.start
# when a customer creates a new Review, it gets added to their review library, but how do we get that 
# to also be added to the Restaurants' library of reviews?