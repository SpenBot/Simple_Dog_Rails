class Dog < ApplicationRecord
  belongs_to :user

  has_many :appointments
  has_many :daycares, through: :appointments


end
