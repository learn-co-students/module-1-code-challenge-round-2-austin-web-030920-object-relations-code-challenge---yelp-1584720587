require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jeff = Customer.new("Jeff", "Fisk")
tim = Customer.new("Tim", "Jones")
linda = Customer.new("Linda", "Samson")
jill = Customer.new("Jill", "McIntosh")

chuys = Restaurant.new("Chuy's")
dos = Restaurant.new("Dos Salsas")

# yes, our stars go to 10 around here
jeff_dos = Review.new(jeff, dos, 10)
jeff_chuys = Review.new(jeff, chuys, 6)
tim_dos = Review.new(tim, dos, rand(10))
tim_chuys = Review.new(tim, chuys, rand(10))
linda_dos = Review.new(linda, dos, rand(10))
linda_chuys = Review.new(linda, chuys, rand(10))
jill_dos = Review.new(jill, dos, rand(10))
jill_chuys = Review.new(jill, chuys, rand(10))


binding.pry
0 #leave this here to ensure binding.pry isn't the last line