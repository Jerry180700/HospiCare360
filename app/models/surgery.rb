class Surgery < ApplicationRecord
  belongs_to :patient, class_name: 'Patient', foreign_key: 'patient_id'
  belongs_to :doctor, class_name: 'Doctor', foreign_key: 'doctor_id'
  belongs_to :nurse, class_name: 'Nurse', foreign_key: 'nurse_id'

  validates :check_in, :check_out, presence: true
end
