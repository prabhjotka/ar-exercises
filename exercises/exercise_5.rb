require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"


@sum=Store.sum("annual_revenue")
@average=Store.average(@sum)

@output=Store.where('annual_revenue > ?',100000).count
puts "Number of stores generating $1M or more in annual revenue: #{@output}"