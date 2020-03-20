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

  #Returns the total number of reviews that a customer has authored
    def num_reviews
      # binding.pry
      Review.all.select {|review| review.customer == self}.length
    end

#given a string of a full name, returns the first 
#customer whose full name matches
    def self.find_by_name(full_name)
      self.all.first{|customer| customer.full_name = self.full_name}
    end

#given a string of a given name, returns an array containing all customers with that given name
    def self.find_all_by_given_name(name)
      # binding.pry
      self.all.select{|customer| customer.name == self.name}
    end

    # Customer#num_reviews
    # Returns the total number of reviews that a customer has authored
    def num_reviews
      binding.pry
    Reviews.all.select{|customer| customer.name == self}.length
    end

    def self.find_

end



# given a string of a full name, returns the first customer whose full name matches
# Customer.find_all_by_given_name(name)
# given a string of a given name, returns an array containing all customers with that given name