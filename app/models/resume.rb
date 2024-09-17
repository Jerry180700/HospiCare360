class Resume < ApplicationRecord
  # enum status: { patient: 0, nurse: 1, doctor: 2 }
  # status belogs_to :resume
  has_many :medical_resumes, dependent: :destroy
end
