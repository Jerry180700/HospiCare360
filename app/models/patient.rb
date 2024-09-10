class Patient < User
  has_many :appointments
  has_many :surgeries
  has_one :bed
end
