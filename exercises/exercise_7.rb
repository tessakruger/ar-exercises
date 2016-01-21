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


def create_store_or_employee(answer)
  if answer == "store"
    puts "To create a new store, please enter the city name."
    name = gets.chomp
    puts "What is the annual revenue for this store?"
    annual_revenue = gets.chomp.to_i
    puts "Does this store carry mens apparel? (Y/N)"
    input = gets.chomp
    if input == "Y"
      mens_apparel = true
    else
      mens_apparel = false
    end
    puts "Does this store carry womens apparel? (Y/N)"
    input = gets.chomp
    if input == "Y"
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
    puts "\n"
    puts "New #{new_store.name} store has been added."

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
    puts "\n"
    puts "New employee #{new_employee.first_name} #{new_employee.last_name} has been added."
  elsif
    answer == "quit" then
    abort
  end
end

prompt_user = false
while prompt_user == false do
    puts "\n"
    puts "Enter <store> or <employee>... or <quit> to exit"
    answer = gets.chomp
    create_store_or_employee(answer)
  end
