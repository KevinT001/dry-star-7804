class Patient < ApplicationRecord
  belongs_to :doctorpatients
  has_many :doctorpatients
  has_many :doctors, through: :doctorpatients

end