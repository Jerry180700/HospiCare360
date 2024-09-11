class DoctorSpecialty < ApplicationRecord
  belongs_to :doctor,
             class_name: 'Doctor',
             foreign_key: 'user_id'
  belongs_to :specialty
end
