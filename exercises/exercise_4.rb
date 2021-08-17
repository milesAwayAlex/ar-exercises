require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

[{name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true},
 {name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false},
 {name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true}].each do |s|
    Store.create(
      name: s[:name],
      annual_revenue: s[:annual_revenue],
      mens_apparel: s[:mens_apparel],
      womens_apparel: s[:womens_apparel])
  end

puts Store.count

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |s|
  puts s.name
  puts s.annual_revenue
end

Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000).each do |s|
  puts s.name
  puts s.annual_revenue
end