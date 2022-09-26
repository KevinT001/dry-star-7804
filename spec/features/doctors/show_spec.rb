require 'rails_helper'

RSpec.describe Doctor do 
  before :each do 
    @hospital_1 = Hospital.create!(name: "Hospital one" )

    @dr_1 = Doctor.create!(name: "Dre", specialty: "herbal", university: "West Coast U", hospital_id: @hospital_1.id  )
    @dr_2 = Doctor.create!(name: "Phil", specialty: "substance abuse", university: "TV university", hospital_id: @hospital_1.id )


  end


  
  describe 'us 1 Doctor Showpage' do 
    

    it 'When I visit a doctors show page, I see all DR info : name, specialty, alum university' do 
      visit doctor_path(@dr_1.id)

      expect(page).to have_content("Name - #{@dr_1.name}")
      expect(page).to have_content("Specialty - #{@dr_1.specialty}")
      expect(page).to have_content("Graduated from - #{@dr_1.university}")
      expect(page).to_not have_content("Name - #{@dr_2.name}")
      
    end

    xit ' I see the name of the hospital where the dr works currntly' do 
      visit doctors_path(@dr_1.id)
      expect(page).to have_content()
      expect(page).to have_content()
      expect(page).to have_content()
    end

    xit 'I see all of the patients the dr has curerntly' do 
      visit doctors_path(@dr_1.id)
      expect(page).to have_content()
      expect(page).to have_content()
      expect(page).to have_content()
    end

  end
end