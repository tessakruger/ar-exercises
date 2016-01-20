require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Tessa", last_name: "Kruger", hourly_rate: 80)
@store2.employees.create(first_name: "Homer", last_name: "Simpson", hourly_rate: 50)
@store1.employees.create(first_name: "Bernadette", last_name: "Wolowitz", hourly_rate: 75)
@store6.employees.create(first_name: "Bob", last_name: "Dude", hourly_rate: 60)
@store4.employees.create(first_name: "Marlie", last_name: "Cruz", hourly_rate: 50)