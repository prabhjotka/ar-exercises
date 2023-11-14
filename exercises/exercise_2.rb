require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"


# user = User.find_by(name: 'David')
# user.update(name: 'Dave')

store1=Store.find_by(id:1)
@store1=store1
store2=Store.find_by(id:2)
@store2=store2
store2=Store.find_by(id:3)
@store3=store2
store = Store.find_by(name: 'Burnaby')
store.update(name: 'Calgary')
