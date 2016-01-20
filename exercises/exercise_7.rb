require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Hello! To create a new store, please enter the city name."
name = gets.chomp
puts "What is the annual revenue for this store?"
annual_revenue = gets.chomp.to_i
puts "Does this store carry mens apparel? (Y/N)"
answer = gets.chomp
if answer == "Y"
	mens_apparel = true
else
	mens_apparel = false
end
puts "Does this store carry womens apparel? (Y/N)"
answer = gets.chomp
if answer == "Y"
	womens_apparel = true
else
	womens_apparel = false
end

new_store = Store.create!(name: name,
	annual_revenue: annual_revenue,
	mens_apparel: mens_apparel,
	womens_apparel: womens_apparel
	)

puts "Great! You've just created a store."