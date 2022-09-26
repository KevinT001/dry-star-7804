class DoctorpatientsController < ApplicationController

  def destroy
    # @patient = Patient.find(params([:id]))
    # @doctor = Doctor.find(params[:id])
    @doctorpatient= Doctorpatient.find(params[:id])
    @doctorpatient.destroy
    redirect(doctor_path(@doctor.id))
  end
end