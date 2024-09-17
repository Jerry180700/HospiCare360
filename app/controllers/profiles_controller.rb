class ProfilesController < ApplicationController
  def home
    @patient = current_user
    @appointments = Appointment.where(patient_id: @patient.id)
    @recent_studies = MedicalResume.includes(:resume).where(user_id: @patient.id)
    @surgeries = @patient.surgeries
    @bed = Bed.find_by(patient_id:@patient.id)
  end
  def information
  end

end
