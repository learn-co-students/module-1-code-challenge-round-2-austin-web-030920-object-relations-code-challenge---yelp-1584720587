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

def restaurants
  Review.all.select { |review|
    review.customer == self}.uniq
  end 

def add_review(restaurant, rating)
  Review.new(self, restaurant, rating)
end

def num_reviews
  Review.all.select { |review|
  review.customer == self}.length
end

def self.find_by_name(name)
  Review.all.each do |review| 
    if review.customer.full_name == name
      name
    end
  end
end

  def self.find_all_by_given_name(name)
    rev_cust = Review.all.select do |review| 
      review.customer.given_name == name
    end
    rev_cust.map {|review| review.customer}.uniq
  end
end
