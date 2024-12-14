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

  def restaurant
    Restaurant.all.collect do |restaurant|
      review.restaurant
    end
  end

  def add_review(restaurant, rating)
    Review.new(self, restuarant, rating)
  end

  def num_reviews
    Review.all.collect do |restaurant_review|
      restaurant_review.restaurant == self
    end
  end

  def self.find_by_name(name)
    Customer.all.find { |cust| cust.full_name == name }
  end

  def self.find_all_by_given_name(name)
    Customer.all.select { |cust| cust.given_name == name }
  end
end
