class Dog < ApplicationRecord  
  has_many :appointments
  has_many :daycares, through: :appointments
end
