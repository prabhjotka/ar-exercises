require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

store3=Store.find_by(id:3)
@store1=store3


store = Store.find_by(name: 'Calgary')
store.destroy

puts "Number of stores in the database: #{Store.count}"