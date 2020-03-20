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
  new_review = Review.new(self, restaurant, rating)
  new_review
end

def nun_reviews
  Review.all.select { |review|
  review.customer == self}.length
end

def self.find_by_name(name)
  Review.all.each do |review| 
    if review.name == self.full_name
      name
    end
  end
end

def find_all_by_given_name(name)
  Review.all.select do |review| 
    review.name == self.full_name
end

end
