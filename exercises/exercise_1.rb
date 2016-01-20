require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Create stores
burnaby = Store.create(name: "Burnaby",
                       annual_revenue: 300000,
                       mens_apparel: true,
                       womens_apparel: true
                       )

richmond = Store.create(name: "Richmond",
                        annual_revenue: 1260000,
                        mens_apparel: false,
                        womens_apparel: true
                        )

gastown = Store.create(name: "Gastown",
                       annual_revenue: 190000,
                       mens_apparel: true,
                       womens_apparel: false
                       )

puts "Created new store #{burnaby.name}"
puts "Created new store #{richmond.name}"
puts "Created new store #{gastown.name}"
puts "Total number of stores: #{Store.count}"
puts "----------"
