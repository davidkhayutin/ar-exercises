require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...


class Employee < ActiveRecord::Base
  belongs_to :store
end


@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 80)
@store1.employees.create(first_name: "David", last_name: "Khayutin", hourly_rate: 60)
@store2.employees.create(first_name: "Kevin", last_name: "Lastname", hourly_rate: 30)
@store2.employees.create(first_name: "Miche", last_name: "Hayes", hourly_rate: 30)
@store1.employees.create(first_name: "Jim", last_name: "Smith", hourly_rate: 90)
@store1.employees.create(first_name: "Don", last_name: "Comp", hourly_rate: 160)

employeeCount = Employee.count


puts "There are #{employeeCount} employees currently using Active Record"