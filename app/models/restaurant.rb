class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # returns an array of all reviews for that restaurant
  def reviews
    Review.all.select {|reviews| reviews.restaurant == self}
    # binding.pry
  end

  # Returns a unique list of all customers who have reviewed a particular restaurant.
    def customers
      Review.all.select {|review| review.restaurant == self}.map {|customer| customer.customer}
      # binding.pry
    end

    # Restaurant#average_star_rating
  # returns the average star rating for a restaurant based on its reviews
  # Reminder: you can calculate the average by adding up all the ratings and dividing by the number of ratings
    def average_star_rating
      sum = self.reviews.collect{|review| review.rating}.sum.to_f
      sum / self.reviews.length
    end

end
