class Customer
  attr_accessor :given_name, :family_name
  
@@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  # Returns a unique array of all restaurants a customer has reviewed
  def restaurants
    r = Review.all.select {|review| review.customer == self}
    r.collect{|review| review.restaurant}.uniq 
  end

  # Creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end 

  # Returns the total number of reviews that a customer has authored
  def num_reviews
    Review.all.select {|review| review.customer == self}.length
  end

  # Given a string of a full name, returns the first 
  # customer whose full name matches
  def self.find_by_name(full_name)
    name = full_name.split(" ")[0]
    self.all.select {|customer| customer.given_name == name}
  end

  # Given a string of a given name, returns an array containing all 
  # customers with that given name
  def self.find_all_by_given_name(name)
      # binding.pry
      self.all.select{|customer| customer.given_name == name}
  end

end


