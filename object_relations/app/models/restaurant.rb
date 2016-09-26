class Restaurant
  # Created with a name and array
  # has an array (rest_reviews) of all the reviews written about the Restaurant
  attr_accessor :review, :name

  def initialize(name)
    @name = name
    @rest_reviews = []
  end

  def reviews
    @rest_reviews 
  end

end