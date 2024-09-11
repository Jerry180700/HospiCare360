class Nurse < User
  has_many :surgeries

  validates :firstname, presence: true
  validates :lastname, presence: true
 
end
