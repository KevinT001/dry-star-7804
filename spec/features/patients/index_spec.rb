require 'rails_helper' do

  RSpec.describe 'patient index' do 
    before :each do 
      @hospital_1 = Hospital.create!(name: "Hospital one" )
      @hospital_2 = Hospital.create!(name: "Hospital two" )


      @dr_1 = Doctor.create!(name: "Dre", specialty: "herbal", university: "West Coast U", hospital_id: @hospital_1.id  )
      @dr_2 = Doctor.create!(name: "Phil", specialty: "substance abuse", university: "TV university", hospital_id: @hospital_1.id )

      @patient_1 = Patient.create!(name: "Ross", age: 34)
      @patient_2 = Patient.create!(name: "Chandler", age: 35)
      @patient_3 = Patient.create!(name: "Monica", age: 36)
      @patient_4 = Patient.create!(name: "Joey", age: 17)
      @doctorpatient_1 = Doctorpatient.create!(doctor_id: @dr_1.id, patient_id: @patient_1.id)
      @doctorpatient_2 = Doctorpatient.create!(doctor_id: @dr_1.id, patient_id: @patient_3.id)
      @doctorpatient_3 = Doctorpatient.create!(doctor_id: @dr_2.id, patient_id: @patient_2.id)
    end
    describe 'us_3' do 

      it 'As a visit index page. I see the names of all adult patients (age is greater than 18)' do
        

      end
    end
  end
end