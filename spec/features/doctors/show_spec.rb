require 'rails_helper'

RSpec.describe Doctor do 
  before :each do 
    @hospital_1 = Hospital.create!(name: "Hospital one" )
    @hospital_2 = Hospital.create!(name: "Hospital two" )


    @dr_1 = Doctor.create!(name: "Dre", specialty: "herbal", university: "West Coast U", hospital_id: @hospital_1.id  )
    @dr_2 = Doctor.create!(name: "Phil", specialty: "substance abuse", university: "TV university", hospital_id: @hospital_1.id )

    @patient_1 = Patient.create!(name: "Ross", age: "34")
    @patient_2 = Patient.create!(name: "Chandler", age: "35")
    @patient_3 = Patient.create!(name: "Monica", age: "36")

    @doctorpatient_1 = Doctorpatient.create!(doctor_id: @dr_1.id, patient_id: @patient_1.id)
    @doctorpatient_2 = Doctorpatient.create!(doctor_id: @dr_1.id, patient_id: @patient_3.id)
    @doctorpatient_3 = Doctorpatient.create!(doctor_id: @dr_2.id, patient_id: @patient_2.id)
  end


  
  describe 'us 1 Doctor Showpage' do 
    

    it 'When I visit a doctors show page, I see all DR info : name, specialty, alum university' do 
      visit doctor_path(@dr_1.id)

      expect(page).to have_content("Name - #{@dr_1.name}")
      expect(page).to have_content("Specialty - #{@dr_1.specialty}")
      expect(page).to have_content("Graduated from - #{@dr_1.university}")
      expect(page).to_not have_content("Name - #{@dr_2.name}")
      
    end

    it ' I see the name of the hospital where the dr works currently' do 
      visit doctor_path(@dr_1.id)

      expect(page).to have_content("Practicing Hospital - #{@hospital_1.name}")
      
      expect(page).to_not have_content("Practicing Hospital - #{@hospital_2.name}")
    end

    it 'I see all of the patients the dr has curerntly' do 
      visit doctor_path(@dr_1.id)

      expect(page).to have_content("Current Patients - ")
      expect(page).to have_content("#{@patient_1.name}")
      expect(page).to have_content("#{@patient_3.name}")


      expect(page).to_not have_content("#{@patient_2.name}")
    end

  end
end