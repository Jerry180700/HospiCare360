class Patient < User
  has_many :appointments, dependent: :destroy
  has_many :surgeries, dependent: :destroy
  has_many :statuses, dependent: :destroy
end
