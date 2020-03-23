class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.map{|view| view.rating == self}
  end

  def customers
    Review.all.select do |customer|
     customer == self.customer
   end
 end

end
