class Doctor < ApplicationRecord
  belongs_to :hospital
  
  has_many :doctorpatients
  has_many :patients, through: :doctorpatients
  

end
