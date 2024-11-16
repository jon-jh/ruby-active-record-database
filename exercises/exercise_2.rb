require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# Assign store 1 and store 2 to instance variables
# Then update store 1
# It's not required to do this to use the update method


@store1 = Store.find(1)
@store2 = Store.find(2)
@store1.update(name: 'New Burnaby')

puts "Store 1 new name: #{@store1.name}"