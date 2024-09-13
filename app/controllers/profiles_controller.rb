class ProfilesController < ApplicationController
  def home
    @patient = User.find_by(type: 'Patient')
    @appointments = Appointment.where(patient_id: @patient.id)
    @recent_studies = MedicalResume.includes(:resume).where(user_id: @patient.id)
  end

  def information
  end
end
