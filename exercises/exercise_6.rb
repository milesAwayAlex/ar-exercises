require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: 'Jason', last_name: 'Willis', hourly_rate: 60)
@store2.employees.create(first_name: 'Robert', last_name: 'Paulson', hourly_rate: 666)
@store1.employees.create(first_name: 'Angel', last_name: 'Face', hourly_rate: 42)
@store1.employees.create(first_name: 'Space', last_name: 'Monkey', hourly_rate: 1)
