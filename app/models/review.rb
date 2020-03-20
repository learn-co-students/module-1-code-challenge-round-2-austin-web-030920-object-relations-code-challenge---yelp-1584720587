class Review
    attr_accessor :rating
    attr_reader :customer, :restaurant
    @@all = []

    def initialize(cust, rest, rat)
        @customer = cust
        @restaurant = rest
        @rating = rat
        @@all << self
    end

    def self.all 
        @@all
    end

    
  
end