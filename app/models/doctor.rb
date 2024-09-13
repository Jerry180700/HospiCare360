class Doctor < User
  has_many :appointments, dependent: :destroy
  has_many :surgeries, dependent: :destroy
end
