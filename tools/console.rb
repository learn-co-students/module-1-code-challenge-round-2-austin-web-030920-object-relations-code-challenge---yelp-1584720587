require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("James" , "Dancer")
cust2 = Customer.new("Antonio", "Coder")
cust3 = Customer.new("Edwin" , "Tester")

rest1 = Restaurant.new("Tiki India")
rest2 = Restaurant.new("Americana Chocoshake")
rest3 = Restaurant.new("Tasty Texas BBQ")

rev1 = Review.new(cust1, rest1, 7)
rev2 = Review.new(cust2, rest2, 8)
rev3 = Review.new(cust3, rest3, 10)
rev4 = Review.new(cust2, rest1, 3)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line