require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
storeCount = Store.count

puts "There are #{storeCount} stores currently using Active Record"

@store3 = Store.find(3)
@store3.destroy

storeCount = Store.count
puts "There are #{storeCount} stores currently using Active Record"

