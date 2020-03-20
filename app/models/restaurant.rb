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

  def reviews
    Review.all.select {|r| r.restaurant == self}
  end

  def customers
    self.reviews.map(&:customer).uniq
  end

  def average_star_rating
    ratings = self.reviews.map{|r| r.rating.to_f}
    ratings.sum / ratings.length
  end

end
