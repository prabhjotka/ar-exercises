class Employee < ActiveRecord::Base
    belongs_to :store
    validate  :hourly_rate_change_to_be_saved,
    :first_name_was,
    :last_name_was,
    :store 
    
end
