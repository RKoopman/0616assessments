class Customer
  # Created with just a name, and an array (all_reviews)
  # array consists of all the Reviews they've written
  
  attr_accessor :review

  def initialize(name)
    @name = name
    @all_reviews = []
  end

  def add_review(restaurant, blurb)
    review = Review.new(restaurant, blurb)
    # binding.pry
    @all_reviews << review
    review.customer = self
    restaurant.reviews << review
    # binding.pry
  end

  def all_written_reviews
    @all_reviews
  end
end

# customer = customer.add_review('it was good')
# a new review belongs to the restaurant
# and belongs to the customer
