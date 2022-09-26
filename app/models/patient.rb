class Patient < ApplicationRecord
  
  has_many :doctorpatients
  has_many :doctors, through: :doctorpatients

end