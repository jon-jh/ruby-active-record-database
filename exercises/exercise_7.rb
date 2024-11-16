require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Validations
class Employee
  belongs_to :store

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store, presence: true
end

class Store
  has_many :employees

  # Validations
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end

puts "Enter a new store name:"
store_name = gets.chomp
new_store = Store.create(name: store_name, annual_revenue: 0, mens_apparel: false, womens_apparel: false)

# Show errors if any
if new_store.errors.any?
  puts "Errors occurred:"
  new_store.errors.full_messages.each do |message|
    puts message
  end
else
  puts "Success"
end
