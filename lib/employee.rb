class Employee < ActiveRecord::Base
   belongs_to :store
   validates :first_name,:last_name, presence: true
   validates :hourly_rate, numericality: {less_than_or_equal_to: 200, greater_than_or_equal_to: 40}
   # validates :store, presence: true - set seperate method on store class to check for this!
end
