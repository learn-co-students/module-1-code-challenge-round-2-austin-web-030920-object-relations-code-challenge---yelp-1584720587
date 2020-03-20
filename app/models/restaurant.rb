class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.map{|view| view.rating == self}
  end

  def customers
    self.reviews.map{|x| x.customers}
  end

end
