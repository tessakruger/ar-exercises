require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

surrey = Store.create(name: "Surrey",
annual_revenue: 224000,
mens_apparel: false,
womens_apparel: true
)

whistler = Store.create(name: "Whistler",
annual_revenue: 1900000,
mens_apparel: true,
womens_apparel: false
)

yaletown = Store.create(name: "Yaletown",
annual_revenue: 430000,
mens_apparel: true,
womens_apparel: true
)

puts "Total number of stores: #{Store.count}"
puts "----------"