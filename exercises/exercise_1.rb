require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Create stores
b = Store.create(name: "Burnaby",
annual_revenue: 300000,
mens_apparel: true,
womens_apparel: true
)

r = Store.create(name: "Richmond",
annual_revenue: 1260000,
mens_apparel: false,
womens_apparel: true
)

g = Store.create(name: "Gastown",
annual_revenue: 190000,
mens_apparel: true,
womens_apparel: false
)

puts "----------"
puts "Total number of stores: #{Store.count}"