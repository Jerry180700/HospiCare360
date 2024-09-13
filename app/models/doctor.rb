class Doctor < User
  has_many :appointments
  has_many :surgeries
  has_one_attached :photo
end
