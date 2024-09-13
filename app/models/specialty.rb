class Specialty < ApplicationRecord
  has_many :doctor_specialty, dependent: :destroy
end
