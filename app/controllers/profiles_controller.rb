class ProfilesController < ApplicationController
  def home
    @patient = current_user
    @appointments = Appointment.where(patient_id: @patient.id)
    @recent_studies = MedicalResume.includes(:resume).where(user_id: @patient.id)
    @surgeries = @patient.surgeries
    # @bed = @patient.bed
  end
  def information
  end

end
