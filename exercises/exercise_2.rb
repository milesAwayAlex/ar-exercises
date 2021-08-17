require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(id: 1)
@store1.update(name: 'Fairview')
p @store1
@store2 = Store.find_by(id: 2)
