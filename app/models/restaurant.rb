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
   x = reviews
   avg = x.map {|review| review.rating}.sum/x.length
   avg
  end

end
