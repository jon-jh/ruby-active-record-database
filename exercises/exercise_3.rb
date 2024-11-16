require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
# Store the 3rd store as @store3
# Use destroy to delete the store from the database

@store3=Store.find(3)
@store3.destroy
puts Store.count