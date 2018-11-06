require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@sum = Store.sum(:annual_revenue)

puts "The combined annual revenue for all stores in $#{@sum}"

@average = (Store.sum(:annual_revenue)/Store.sum(:id)).round(2)

puts "The average annual revenue for each store is $#{@average}"

@mill =Store.where("annual_revenue >= ?", 1000000).count

puts "There are #{@mill} stores that are generating $1000000 or more in sales "