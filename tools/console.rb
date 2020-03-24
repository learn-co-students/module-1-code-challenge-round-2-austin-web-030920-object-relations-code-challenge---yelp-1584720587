require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# customers
joe = Customer.new("Joe", "Schmoe")
jill = Customer.new("Jill", "Rice")
anne = Customer.new("Anne", "Flowers")
beth = Customer.new("Beth", "Towers")
jill2 = Customer.new("Jill", "Firestone")
#restaurants
fresas = Restaurant.new("Fresa's Chicken")
thai = Restaurant.new("Thai Fresh")
laundi = Restaurant.new("Launderette")

#reviews
good = Review.new(joe, fresas, 5)
ok = Review.new(jill, fresas, 4)
bad = Review.new(anne, thai, 10)
wonderful = Review.new(beth, laundi, 8)
bleh = Review.new(joe, fresas, 2)
wowow = Review.new(joe, thai, 9)

# tools/console.rb
binding.pry
0 #leave this here to ensure binding.pry isn't the last line