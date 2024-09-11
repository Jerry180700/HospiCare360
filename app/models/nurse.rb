class Nurse < User
  has_many :surgeries

  validates :first_name, presence: true
  validates :last_name, presence: true

end
