class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all 
    @@all
  end

  def full_name
    "#{given_name}" + " #{family_name}"
  end

  def reviews
    Review.all.select {|r| r.customer == self}
  end

  def restaurants
    self.reviews.map(&:restaurant).uniq
  end

  def add_review(rest, rat)
    Review.new(self, rest, rat)
  end

  def num_reviews
    self.reviews.count
  end

  def self.find_by_name(name)
    self.all.find{|c| c.full_name == name}
  end

  def self.find_all_by_given_name(name)
    self.all.find_all{|n| n.given_name == name}
  end

end
