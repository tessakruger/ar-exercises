require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.find_by(id:1)
@store2 = Store.find_by(id:2)
@store1.name = 'Victoria'
@store1.save!
puts "Updated store name to: #{@store1.name}"
@store1.name = 'Burnaby'
@store1.save!
puts "Updated store name to: #{@store1.name}"
puts "----------"
