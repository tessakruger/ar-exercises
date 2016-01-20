require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Hello, would you like to create a store or employee profile?"
puts "Enter <store> or <employee>:"
answer = gets.chomp
if answer == "store"
  puts "To create a new store, please enter the city name."
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
  puts "----------"
  puts "----------"
  puts "Great! You've just created the #{new_store.name} store."
  puts "----------"

elsif
  answer == "employee"
  puts "To create a new employee profile, please enter their first name."
  first_name = gets.chomp
  puts "Now enter their last name."
  last_name = gets.chomp
  puts "Enter the Store ID at which they work."
  store = gets.chomp.to_i
  puts "Enter their hourly rate."
  hourly_rate = gets.chomp

  new_employee = Employee.create!(first_name: first_name,
                                  last_name: last_name,
                                  store_id: store,
                                  hourly_rate: hourly_rate
                                  )
  puts "----------"
  puts "----------"
  puts "Great, new employee #{new_employee.first_name} has been added."
  puts "----------"
else
  puts "Please try your answer again."
end
