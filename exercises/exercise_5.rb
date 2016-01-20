require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

all_stores_revenue = Store.sum(:annual_revenue)
puts "Total revenue of all stores: $#{'%.02f' % all_stores_revenue}"
average_revenue = Store.average(:annual_revenue)
puts "Average total revenue of all stores: $#{'%.02f' % average_revenue}"
highest_revenue_stores = Store.where("annual_revenue>(?)", 1000000).count
puts "Number of stores with an annual revenue greater than $1,000,000: #{highest_revenue_stores}"