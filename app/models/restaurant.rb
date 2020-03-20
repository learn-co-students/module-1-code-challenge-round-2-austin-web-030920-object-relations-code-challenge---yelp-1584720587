class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

def customers
  reviews.map { |review| review.customer}.uniq
end

def average_star_rating
   Review.all.map {|review| review.rating}.sum/review.length
end

end
