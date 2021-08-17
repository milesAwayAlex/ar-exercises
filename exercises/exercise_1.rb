require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

[{name: "Burnaby",
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true},
 {name: "Richmond",
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true},
 {name: "Gastown",
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false}].each do |s|
    Store.create(
      name: s[:name],
      annual_revenue: s[:annual_revenue],
      mens_apparel: s[:mens_apparel],
      womens_apparel: s[:womens_apparel])
  end

puts Store.count
