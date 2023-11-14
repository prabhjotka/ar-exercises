require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'



puts "Exercise 7"
puts "----------"

  def first_name_must_not_blank
    if first_name.blank? || last_name.blank?
      errors.add(:first_name_was, "not blank")
    end
  end
  def last_name_must_not_blank
    if last_name.blank? || last_name.blank?
      errors.add(:last_name_was, "not blank")
    end
  end
  def  hourly_rate_change_to_be_saved
    unless hourly_rate.between?(40, 200)
      errors.add(:hourly_rate, "must be between 40 and 200")
    end
  end
  def  store_belongs_to_employee
    
      errors.add(:store, "must be associated") unless store.present?
  
  end
  def  store_name_minimum_three_character
   
      errors.add(:name, "must be minumum three character ") 

    end

   
    puts "Enter store Name"
    @name=gets.chomp
 @store_name= Store.create(name: "#{@name}")
 # Save the store to the database
if @store_name.save
  puts "Store created successfully!"
else
  puts "Error creating store:"
 @store_name.errors.full_messages.each do |message|
    puts "- #{message}"
  end
end